// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userModelNotifierHash() => r'ca29b74cec27c819cdc6e2cffdbb47c4d80fad1b';

/// 現在ログインしているユーザーの情報を提供する
///
/// 未ログイン時にこのproviderを参照すると例外をスローする
///
/// Copied from [userModelNotifier].
@ProviderFor(userModelNotifier)
final userModelNotifierProvider = FutureProvider<UserModel>.internal(
  userModelNotifier,
  name: r'userModelNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userModelNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserModelNotifierRef = FutureProviderRef<UserModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
