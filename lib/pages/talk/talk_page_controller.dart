import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/ai_info_model.dart';
import '../../models/room_data_model.dart';
import '../../repositories/chat_repository.dart';

part 'talk_page_controller.g.dart';

@riverpod
class TalkPageNotifier extends _$TalkPageNotifier {
  @override
  Future<RoomDataModel> build(String roomId) async {
    final ret = await ChatRepository().fetchChatsByRoomId(roomId);
    return ret;
  }

  Future<void> postChat({
    required String roomId,
    required String senderType,
    required String senderId,
    required String content,
    required List<AiInfoModel> aiInfo,
  }) async {
    await ChatRepository().postChat(
      roomId: roomId,
      senderType: senderType,
      senderId: senderId,
      content: content,
      aiInfo: aiInfo,
    );
  }
}
