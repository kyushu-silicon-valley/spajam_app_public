import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'ai_info_model.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
class ChatModel with _$ChatModel {
  factory ChatModel({
    required String id,
    @JsonKey(name: 'sender_type') required String senderType,
    @JsonKey(name: 'sender_id') required String senderId,
    @JsonKey(name: 'room_id') required String roomId,
    required String content,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    AiInfoModel? aiInfo,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
