// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
mixin _$ChatModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_type')
  String get senderType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_id')
  String get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_id')
  String get roomId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  AiInfoModel? get aiInfo => throw _privateConstructorUsedError;

  /// Serializes this ChatModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'sender_type') String senderType,
      @JsonKey(name: 'sender_id') String senderId,
      @JsonKey(name: 'room_id') String roomId,
      String content,
      @JsonKey(name: 'created_at') DateTime createdAt,
      AiInfoModel? aiInfo});

  $AiInfoModelCopyWith<$Res>? get aiInfo;
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderType = null,
    Object? senderId = null,
    Object? roomId = null,
    Object? content = null,
    Object? createdAt = null,
    Object? aiInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      senderType: null == senderType
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      aiInfo: freezed == aiInfo
          ? _value.aiInfo
          : aiInfo // ignore: cast_nullable_to_non_nullable
              as AiInfoModel?,
    ) as $Val);
  }

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AiInfoModelCopyWith<$Res>? get aiInfo {
    if (_value.aiInfo == null) {
      return null;
    }

    return $AiInfoModelCopyWith<$Res>(_value.aiInfo!, (value) {
      return _then(_value.copyWith(aiInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatModelImplCopyWith<$Res>
    implements $ChatModelCopyWith<$Res> {
  factory _$$ChatModelImplCopyWith(
          _$ChatModelImpl value, $Res Function(_$ChatModelImpl) then) =
      __$$ChatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'sender_type') String senderType,
      @JsonKey(name: 'sender_id') String senderId,
      @JsonKey(name: 'room_id') String roomId,
      String content,
      @JsonKey(name: 'created_at') DateTime createdAt,
      AiInfoModel? aiInfo});

  @override
  $AiInfoModelCopyWith<$Res>? get aiInfo;
}

/// @nodoc
class __$$ChatModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ChatModelImpl>
    implements _$$ChatModelImplCopyWith<$Res> {
  __$$ChatModelImplCopyWithImpl(
      _$ChatModelImpl _value, $Res Function(_$ChatModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderType = null,
    Object? senderId = null,
    Object? roomId = null,
    Object? content = null,
    Object? createdAt = null,
    Object? aiInfo = freezed,
  }) {
    return _then(_$ChatModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      senderType: null == senderType
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      aiInfo: freezed == aiInfo
          ? _value.aiInfo
          : aiInfo // ignore: cast_nullable_to_non_nullable
              as AiInfoModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatModelImpl with DiagnosticableTreeMixin implements _ChatModel {
  _$ChatModelImpl(
      {required this.id,
      @JsonKey(name: 'sender_type') required this.senderType,
      @JsonKey(name: 'sender_id') required this.senderId,
      @JsonKey(name: 'room_id') required this.roomId,
      required this.content,
      @JsonKey(name: 'created_at') required this.createdAt,
      this.aiInfo});

  factory _$ChatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'sender_type')
  final String senderType;
  @override
  @JsonKey(name: 'sender_id')
  final String senderId;
  @override
  @JsonKey(name: 'room_id')
  final String roomId;
  @override
  final String content;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final AiInfoModel? aiInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatModel(id: $id, senderType: $senderType, senderId: $senderId, roomId: $roomId, content: $content, createdAt: $createdAt, aiInfo: $aiInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('senderType', senderType))
      ..add(DiagnosticsProperty('senderId', senderId))
      ..add(DiagnosticsProperty('roomId', roomId))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('aiInfo', aiInfo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderType, senderType) ||
                other.senderType == senderType) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.aiInfo, aiInfo) || other.aiInfo == aiInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, senderType, senderId, roomId,
      content, createdAt, aiInfo);

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      __$$ChatModelImplCopyWithImpl<_$ChatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatModelImplToJson(
      this,
    );
  }
}

abstract class _ChatModel implements ChatModel {
  factory _ChatModel(
      {required final String id,
      @JsonKey(name: 'sender_type') required final String senderType,
      @JsonKey(name: 'sender_id') required final String senderId,
      @JsonKey(name: 'room_id') required final String roomId,
      required final String content,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      final AiInfoModel? aiInfo}) = _$ChatModelImpl;

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$ChatModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'sender_type')
  String get senderType;
  @override
  @JsonKey(name: 'sender_id')
  String get senderId;
  @override
  @JsonKey(name: 'room_id')
  String get roomId;
  @override
  String get content;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  AiInfoModel? get aiInfo;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
