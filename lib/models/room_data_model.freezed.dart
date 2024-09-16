// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoomDataModel _$RoomDataModelFromJson(Map<String, dynamic> json) {
  return _RoomDataModel.fromJson(json);
}

/// @nodoc
mixin _$RoomDataModel {
  List<AiInfoModel> get aiList => throw _privateConstructorUsedError;
  List<ChatModel> get chatList => throw _privateConstructorUsedError;

  /// Serializes this RoomDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomDataModelCopyWith<RoomDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDataModelCopyWith<$Res> {
  factory $RoomDataModelCopyWith(
          RoomDataModel value, $Res Function(RoomDataModel) then) =
      _$RoomDataModelCopyWithImpl<$Res, RoomDataModel>;
  @useResult
  $Res call({List<AiInfoModel> aiList, List<ChatModel> chatList});
}

/// @nodoc
class _$RoomDataModelCopyWithImpl<$Res, $Val extends RoomDataModel>
    implements $RoomDataModelCopyWith<$Res> {
  _$RoomDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aiList = null,
    Object? chatList = null,
  }) {
    return _then(_value.copyWith(
      aiList: null == aiList
          ? _value.aiList
          : aiList // ignore: cast_nullable_to_non_nullable
              as List<AiInfoModel>,
      chatList: null == chatList
          ? _value.chatList
          : chatList // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomDataModelImplCopyWith<$Res>
    implements $RoomDataModelCopyWith<$Res> {
  factory _$$RoomDataModelImplCopyWith(
          _$RoomDataModelImpl value, $Res Function(_$RoomDataModelImpl) then) =
      __$$RoomDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AiInfoModel> aiList, List<ChatModel> chatList});
}

/// @nodoc
class __$$RoomDataModelImplCopyWithImpl<$Res>
    extends _$RoomDataModelCopyWithImpl<$Res, _$RoomDataModelImpl>
    implements _$$RoomDataModelImplCopyWith<$Res> {
  __$$RoomDataModelImplCopyWithImpl(
      _$RoomDataModelImpl _value, $Res Function(_$RoomDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aiList = null,
    Object? chatList = null,
  }) {
    return _then(_$RoomDataModelImpl(
      aiList: null == aiList
          ? _value._aiList
          : aiList // ignore: cast_nullable_to_non_nullable
              as List<AiInfoModel>,
      chatList: null == chatList
          ? _value._chatList
          : chatList // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomDataModelImpl
    with DiagnosticableTreeMixin
    implements _RoomDataModel {
  const _$RoomDataModelImpl(
      {required final List<AiInfoModel> aiList,
      required final List<ChatModel> chatList})
      : _aiList = aiList,
        _chatList = chatList;

  factory _$RoomDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomDataModelImplFromJson(json);

  final List<AiInfoModel> _aiList;
  @override
  List<AiInfoModel> get aiList {
    if (_aiList is EqualUnmodifiableListView) return _aiList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aiList);
  }

  final List<ChatModel> _chatList;
  @override
  List<ChatModel> get chatList {
    if (_chatList is EqualUnmodifiableListView) return _chatList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoomDataModel(aiList: $aiList, chatList: $chatList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoomDataModel'))
      ..add(DiagnosticsProperty('aiList', aiList))
      ..add(DiagnosticsProperty('chatList', chatList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomDataModelImpl &&
            const DeepCollectionEquality().equals(other._aiList, _aiList) &&
            const DeepCollectionEquality().equals(other._chatList, _chatList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_aiList),
      const DeepCollectionEquality().hash(_chatList));

  /// Create a copy of RoomDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomDataModelImplCopyWith<_$RoomDataModelImpl> get copyWith =>
      __$$RoomDataModelImplCopyWithImpl<_$RoomDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomDataModelImplToJson(
      this,
    );
  }
}

abstract class _RoomDataModel implements RoomDataModel {
  const factory _RoomDataModel(
      {required final List<AiInfoModel> aiList,
      required final List<ChatModel> chatList}) = _$RoomDataModelImpl;

  factory _RoomDataModel.fromJson(Map<String, dynamic> json) =
      _$RoomDataModelImpl.fromJson;

  @override
  List<AiInfoModel> get aiList;
  @override
  List<ChatModel> get chatList;

  /// Create a copy of RoomDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomDataModelImplCopyWith<_$RoomDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
