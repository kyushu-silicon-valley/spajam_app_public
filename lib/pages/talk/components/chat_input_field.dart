import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../l10n/l10n.dart';
import '../../../models/ai_info_model.dart';
import '../../../providers/user_provider.dart';
import '../talk_page_controller.dart';

class ChatInputField extends HookConsumerWidget {
  const ChatInputField({
    super.key,
    required this.controller,
    required this.roomId,
    required this.aiInfo,
  });

  final TextEditingController controller;
  final String roomId;
  final List<AiInfoModel> aiInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsyncValue = ref.watch(userModelNotifierProvider);
    final user = userAsyncValue.value;
    final isSending = useState(false);
    return SafeArea(
      top: false,
      right: false,
      left: false,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 4,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  onTapOutside: (_) {
                    FocusScope.of(context).unfocus();
                  },
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: L10n.of(context)!.typeAMessage,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Theme.of(context).scaffoldBackgroundColor,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: isSending.value
                    ? const CircularProgressIndicator(
                      strokeWidth: 2,
                    )
                    : const Icon(Icons.send),
                onPressed: () async {
                  try {
                    isSending.value = true;
                    final message = controller.text;
                    if (message.isEmpty) {
                      return;
                    }
                    if (controller.text.isEmpty) {
                      return;
                    }
                    if (user == null) {
                      return;
                    }
                    await ref
                        .read(talkPageNotifierProvider(roomId).notifier)
                        .postChat(
                          roomId: roomId,
                          senderType: 'USER',
                          senderId: user.id,
                          content: message,
                          aiInfo: aiInfo,
                        );
                    controller.clear();
                    ref.invalidate(talkPageNotifierProvider(roomId));
                    // ignore: avoid_catches_without_on_clauses
                  } catch (_) {
                  } finally {
                    isSending.value = false;
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
