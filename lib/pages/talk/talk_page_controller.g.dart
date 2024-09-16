// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'talk_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$talkPageNotifierHash() => r'09468853a4dd36630b21e5dde8e4a498e7cd6c10';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$TalkPageNotifier
    extends BuildlessAutoDisposeAsyncNotifier<RoomDataModel> {
  late final String roomId;

  FutureOr<RoomDataModel> build(
    String roomId,
  );
}

/// See also [TalkPageNotifier].
@ProviderFor(TalkPageNotifier)
const talkPageNotifierProvider = TalkPageNotifierFamily();

/// See also [TalkPageNotifier].
class TalkPageNotifierFamily extends Family<AsyncValue<RoomDataModel>> {
  /// See also [TalkPageNotifier].
  const TalkPageNotifierFamily();

  /// See also [TalkPageNotifier].
  TalkPageNotifierProvider call(
    String roomId,
  ) {
    return TalkPageNotifierProvider(
      roomId,
    );
  }

  @override
  TalkPageNotifierProvider getProviderOverride(
    covariant TalkPageNotifierProvider provider,
  ) {
    return call(
      provider.roomId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'talkPageNotifierProvider';
}

/// See also [TalkPageNotifier].
class TalkPageNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    TalkPageNotifier, RoomDataModel> {
  /// See also [TalkPageNotifier].
  TalkPageNotifierProvider(
    String roomId,
  ) : this._internal(
          () => TalkPageNotifier()..roomId = roomId,
          from: talkPageNotifierProvider,
          name: r'talkPageNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$talkPageNotifierHash,
          dependencies: TalkPageNotifierFamily._dependencies,
          allTransitiveDependencies:
              TalkPageNotifierFamily._allTransitiveDependencies,
          roomId: roomId,
        );

  TalkPageNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.roomId,
  }) : super.internal();

  final String roomId;

  @override
  FutureOr<RoomDataModel> runNotifierBuild(
    covariant TalkPageNotifier notifier,
  ) {
    return notifier.build(
      roomId,
    );
  }

  @override
  Override overrideWith(TalkPageNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: TalkPageNotifierProvider._internal(
        () => create()..roomId = roomId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        roomId: roomId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TalkPageNotifier, RoomDataModel>
      createElement() {
    return _TalkPageNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TalkPageNotifierProvider && other.roomId == roomId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, roomId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TalkPageNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<RoomDataModel> {
  /// The parameter `roomId` of this provider.
  String get roomId;
}

class _TalkPageNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TalkPageNotifier,
        RoomDataModel> with TalkPageNotifierRef {
  _TalkPageNotifierProviderElement(super.provider);

  @override
  String get roomId => (origin as TalkPageNotifierProvider).roomId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
