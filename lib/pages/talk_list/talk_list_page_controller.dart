import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/ai_info_model.dart';
import '../../models/room_model.dart';
import '../../repositories/ai_repository.dart';
import '../../repositories/room_repository.dart';

part 'talk_list_page_controller.g.dart';

@riverpod
class RoomListPageNotifier extends _$RoomListPageNotifier {
  @override
  Future<List<RoomModel>> build() async {
    final rooms = await RoomRepository().getMyRooms();
    return rooms;
  }
}

@riverpod
class AiInfoNotifier extends _$AiInfoNotifier {
  @override
  Future<List<AiInfoModel>> build() async {
    final aiInfos = await AiRepository().fetchAi();
    return aiInfos;
  }

  Future<void> createRoom(
    String name,
    String roomIconUrl,
    Set<String> aiIds,
  ) async {
    await RoomRepository().createRoom(
      name,
      roomIconUrl,
      aiIds,
    );
  }
}
