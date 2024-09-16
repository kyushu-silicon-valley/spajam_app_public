import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/room_model.dart';

class RoomRepository {
  Future<List<RoomModel>> getMyRooms() async {
    final client = Supabase.instance.client;
    final response = await client.from('rooms').select();

    final rooms = response.map(RoomModel.fromJson).toList();
    return rooms;
  }

  Future<void> createRoom(
    String name,
    String roomIconUrl,
    Set<String> aiIds,
  ) async {
    //TODO: IMPLEMENT

    // final client = Supabase.instance.client;
    // await client.from('rooms').upsert([
    //   {
    //     'name': name,
    //     'room_icon_url': roomIconUrl,
    //   }
    // ]);
  }
}
