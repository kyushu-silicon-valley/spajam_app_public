import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_info_model.freezed.dart';
part 'ai_info_model.g.dart';

@freezed
class AiInfoModel with _$AiInfoModel {
  const factory AiInfoModel({
    required String id,
    required String name,
    required String prompt,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'admin_id') required String adminId,
  }) = _AiInfoModel;

  factory AiInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AiInfoModelFromJson(json);
}
