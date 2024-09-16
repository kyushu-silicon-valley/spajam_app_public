// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      id: json['id'] as String,
      senderType: json['sender_type'] as String,
      senderId: json['sender_id'] as String,
      roomId: json['room_id'] as String,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      aiInfo: json['aiInfo'] == null
          ? null
          : AiInfoModel.fromJson(json['aiInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatModelImplToJson(_$ChatModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender_type': instance.senderType,
      'sender_id': instance.senderId,
      'room_id': instance.roomId,
      'content': instance.content,
      'created_at': instance.createdAt.toIso8601String(),
      'aiInfo': instance.aiInfo,
    };
