// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AiInfoModel _$AiInfoModelFromJson(Map<String, dynamic> json) {
  return _AiInfoModel.fromJson(json);
}

/// @nodoc
mixin _$AiInfoModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get prompt => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_id')
  String get adminId => throw _privateConstructorUsedError;

  /// Serializes this AiInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AiInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AiInfoModelCopyWith<AiInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiInfoModelCopyWith<$Res> {
  factory $AiInfoModelCopyWith(
          AiInfoModel value, $Res Function(AiInfoModel) then) =
      _$AiInfoModelCopyWithImpl<$Res, AiInfoModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String prompt,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'admin_id') String adminId});
}

/// @nodoc
class _$AiInfoModelCopyWithImpl<$Res, $Val extends AiInfoModel>
    implements $AiInfoModelCopyWith<$Res> {
  _$AiInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AiInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? prompt = null,
    Object? imageUrl = null,
    Object? adminId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AiInfoModelImplCopyWith<$Res>
    implements $AiInfoModelCopyWith<$Res> {
  factory _$$AiInfoModelImplCopyWith(
          _$AiInfoModelImpl value, $Res Function(_$AiInfoModelImpl) then) =
      __$$AiInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String prompt,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'admin_id') String adminId});
}

/// @nodoc
class __$$AiInfoModelImplCopyWithImpl<$Res>
    extends _$AiInfoModelCopyWithImpl<$Res, _$AiInfoModelImpl>
    implements _$$AiInfoModelImplCopyWith<$Res> {
  __$$AiInfoModelImplCopyWithImpl(
      _$AiInfoModelImpl _value, $Res Function(_$AiInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AiInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? prompt = null,
    Object? imageUrl = null,
    Object? adminId = null,
  }) {
    return _then(_$AiInfoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiInfoModelImpl with DiagnosticableTreeMixin implements _AiInfoModel {
  const _$AiInfoModelImpl(
      {required this.id,
      required this.name,
      required this.prompt,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'admin_id') required this.adminId});

  factory _$AiInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiInfoModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String prompt;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'admin_id')
  final String adminId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AiInfoModel(id: $id, name: $name, prompt: $prompt, imageUrl: $imageUrl, adminId: $adminId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AiInfoModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('prompt', prompt))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('adminId', adminId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.adminId, adminId) || other.adminId == adminId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, prompt, imageUrl, adminId);

  /// Create a copy of AiInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AiInfoModelImplCopyWith<_$AiInfoModelImpl> get copyWith =>
      __$$AiInfoModelImplCopyWithImpl<_$AiInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiInfoModelImplToJson(
      this,
    );
  }
}

abstract class _AiInfoModel implements AiInfoModel {
  const factory _AiInfoModel(
          {required final String id,
          required final String name,
          required final String prompt,
          @JsonKey(name: 'image_url') required final String imageUrl,
          @JsonKey(name: 'admin_id') required final String adminId}) =
      _$AiInfoModelImpl;

  factory _AiInfoModel.fromJson(Map<String, dynamic> json) =
      _$AiInfoModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get prompt;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'admin_id')
  String get adminId;

  /// Create a copy of AiInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AiInfoModelImplCopyWith<_$AiInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
