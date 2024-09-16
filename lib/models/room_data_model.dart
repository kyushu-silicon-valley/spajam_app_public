import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'ai_info_model.dart';
import 'chat_model.dart';

part 'room_data_model.freezed.dart';
part 'room_data_model.g.dart';

@freezed
class RoomDataModel with _$RoomDataModel {
  const factory RoomDataModel({
    required List<AiInfoModel> aiList,
    required List<ChatModel> chatList,
  }) = _RoomDataModel;

  factory RoomDataModel.fromJson(Map<String, dynamic> json) =>
      _$RoomDataModelFromJson(json);
}
