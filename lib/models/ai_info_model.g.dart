// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AiInfoModelImpl _$$AiInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$AiInfoModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      prompt: json['prompt'] as String,
      imageUrl: json['image_url'] as String,
      adminId: json['admin_id'] as String,
    );

Map<String, dynamic> _$$AiInfoModelImplToJson(_$AiInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'prompt': instance.prompt,
      'image_url': instance.imageUrl,
      'admin_id': instance.adminId,
    };
