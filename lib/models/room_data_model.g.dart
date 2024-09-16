// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomDataModelImpl _$$RoomDataModelImplFromJson(Map<String, dynamic> json) =>
    _$RoomDataModelImpl(
      aiList: (json['aiList'] as List<dynamic>)
          .map((e) => AiInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      chatList: (json['chatList'] as List<dynamic>)
          .map((e) => ChatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoomDataModelImplToJson(_$RoomDataModelImpl instance) =>
    <String, dynamic>{
      'aiList': instance.aiList,
      'chatList': instance.chatList,
    };
