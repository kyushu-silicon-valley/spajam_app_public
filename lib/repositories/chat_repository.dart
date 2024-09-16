// ignore_for_file: avoid_dynamic_calls

import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/ai_info_model.dart';
import '../models/chat_model.dart';
import '../models/room_data_model.dart';
import 'chat_gpt_repository.dart';

class ChatRepository {
  Future<RoomDataModel> fetchChatsByRoomId(String roomId) async {
    try {
      final client = Supabase.instance.client;

      // AIリストの取得
      final aiResponse = await client
          .from('room_ai_relations')
          .select('ai_infos(*)')
          .eq('room_id', roomId);

      final aiMap = Map.fromEntries(
        (aiResponse as List<dynamic>).map(
          (ai) => MapEntry(
            ai['ai_infos']['id'] as String,
            AiInfoModel.fromJson(ai['ai_infos'] as Map<String, dynamic>),
          ),
        ),
      );

      // チャットリストの取得
      final chatResponse = await client
          .from('chats')
          .select()
          .eq('room_id', roomId)
          .order('created_at');

      final chatList = (chatResponse as List<dynamic>).map((chat) {
        final chatData = chat as Map<String, dynamic>;
        final senderType = chatData['sender_type'] as String;
        final senderId = chatData['sender_id'] as String;

        return ChatModel(
          id: chatData['id'] as String,
          senderType: senderType,
          senderId: senderId,
          roomId: chatData['room_id'] as String,
          content: chatData['content'] as String,
          createdAt: DateTime.parse(chatData['created_at'] as String),
          aiInfo: senderType == 'AI' ? aiMap[senderId] : null,
        );
      }).toList();

      return RoomDataModel(
        aiList: aiMap.values.toList(),
        chatList: chatList,
      );
    } catch (e, _) {
      throw Exception('Failed to fetch room data: $e');
    }
  }

  Future<void> postChat({
    required String roomId,
    required String senderType,
    required String senderId,
    required String content,
    required List<AiInfoModel> aiInfo,
  }) async {
    try {
      final client = Supabase.instance.client;

      await client.from('chats').upsert({
        'room_id': roomId,
        'sender_type': senderType,
        'sender_id': senderId,
        'content': content,
      });

      for (final ai in aiInfo) {
        final r = await ChatGptRepository().getResponse(
          ai.prompt,
          content,
        );
        await client.from('chats').upsert({
          'room_id': roomId,
          'sender_type': 'AI',
          'sender_id': ai.id,
          'content': r,
        });
      }
    } catch (e, _) {
      throw Exception('Failed to post chat: $e');
    }
  }
}
