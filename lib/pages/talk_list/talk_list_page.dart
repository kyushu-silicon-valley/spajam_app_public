import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../l10n/l10n.dart';
import 'components/new_chat_room_bottom_sheet.dart';
import 'components/side_menu.dart';
import 'talk_list_page_controller.dart';

class TalkListPage extends HookConsumerWidget {
  const TalkListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(roomListPageNotifierProvider);
    final themeColor = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.of(context)!.talk),
      ),
      drawer: const SideMenu(),
      body: switch (state) {
        AsyncData(:final value) => RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(roomListPageNotifierProvider);
            },
            child: ListView.separated(
              itemCount: value.length,
              itemBuilder: (context, index) {
                final room = value[index];
                return InkWell(
                  onTap: () {
                    context.push('/talk/${room.id}/${room.name}');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: ListTile(
                      // ignore: use_decorated_box
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: themeColor.primaryColor,
                            width: 2,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: CachedNetworkImageProvider(
                            room.roomIconUrl,
                          ),
                          radius: 40,
                        ),
                      ),
                      title: Text(room.name),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
            ),
          ),
        AsyncError(:final error) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Error: $error'),
                ElevatedButton(
                  onPressed: () {
                    ref.invalidate(roomListPageNotifierProvider);
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          ),
        AsyncLoading() => const Center(
            child: CircularProgressIndicator(),
          ),
        _ => const SizedBox(),
      },
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (context) => const NewChatRoomBottomSheet(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
