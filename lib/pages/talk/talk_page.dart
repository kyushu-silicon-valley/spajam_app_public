import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'components/chat_bubble.dart';
import 'components/chat_input_field.dart';
import 'talk_page_controller.dart';

class TalkPage extends HookConsumerWidget {
  const TalkPage(
    this.id, {
    required this.name,
    super.key,
  });
  final String id;
  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final state = ref.watch(talkPageNotifierProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: switch (state) {
        AsyncData(:final value) => ColoredBox(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    itemCount: value.chatList.length,
                    itemBuilder: (context, index) {
                      return ChatBubble(
                        message: value.chatList[index].content,
                        isMe: value.chatList[index].aiInfo == null,
                        profileImageUrl:
                            value.chatList[index].aiInfo?.imageUrl ?? '',
                        sentAt: value.chatList[index].createdAt,
                      );
                    },
                  ),
                ),
                ChatInputField(
                  controller: controller,
                  roomId: id,
                  aiInfo: value.aiList,
                ),
              ],
            ),
          ),
        AsyncLoading() => const Center(
            child: CircularProgressIndicator(),
          ),
        AsyncError(:final error, :final stackTrace) => Center(
            child: Column(
              children: [
                Text(error.toString()),
                Text(stackTrace.toString()),
              ],
            ),
          ),
        _ => const SizedBox.shrink(),
      },
    );
  }
}
