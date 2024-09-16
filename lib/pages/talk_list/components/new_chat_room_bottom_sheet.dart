import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../components/mini_button.dart';
import '../../../l10n/l10n.dart';
import '../talk_list_page_controller.dart';

final selectedAiSetProvider =
    StateProvider.autoDispose<Set<String>>((ref) => {});

class NewChatRoomBottomSheet extends HookConsumerWidget {
  const NewChatRoomBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(aiInfoNotifierProvider);
    final themeColor = Theme.of(context);
    final selectedAiSet = ref.watch(selectedAiSetProvider);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: themeColor.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 32),
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: themeColor.colorScheme.onSurface.withOpacity(0.2),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(),
                Text(
                  L10n.of(context)!.selectAis,
                  style: themeColor.textTheme.titleMedium,
                ),
                const SizedBox(width: 32),
                MiniButton.outlined(
                  text: L10n.of(context)!.create,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Flexible(
            child: switch (state) {
              AsyncData(:final value) => ListView.builder(
                  shrinkWrap: true,
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    final aiInfo = value[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(
                          aiInfo.imageUrl,
                        ),
                      ),
                      title: Text(aiInfo.name),
                      trailing: selectedAiSet.contains(aiInfo.id)
                          ? const Icon(Icons.check)
                          : null,
                      onTap: () {
                        ref
                            .read(selectedAiSetProvider.notifier)
                            .update((state) {
                          final newSet = Set<String>.from(state);
                          if (newSet.contains(aiInfo.id)) {
                            newSet.remove(aiInfo.id);
                          } else {
                            newSet.add(aiInfo.id);
                          }
                          return newSet;
                        });
                      },
                    );
                  },
                ),
              AsyncLoading() => const Center(
                  child: CircularProgressIndicator(),
                ),
              AsyncError(:final error) => Center(
                  child: Text('Error: $error'),
                ),
              _ => const SizedBox(),
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
