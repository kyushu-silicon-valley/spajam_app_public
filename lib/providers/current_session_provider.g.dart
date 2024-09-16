// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_session_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentSessionHash() => r'853c797bef412b1d2fe3e2c44d87d9a92a89f489';

/// See also [currentSession].
@ProviderFor(currentSession)
final currentSessionProvider = Provider<User?>.internal(
  currentSession,
  name: r'currentSessionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentSessionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentSessionRef = ProviderRef<User?>;
String _$currentUserStreamHash() => r'fa4ae15f8356cad8a8dd63c6d7bed0e4460e148b';

/// See also [currentUserStream].
@ProviderFor(currentUserStream)
final currentUserStreamProvider = StreamProvider<AuthState>.internal(
  currentUserStream,
  name: r'currentUserStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentUserStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentUserStreamRef = StreamProviderRef<AuthState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
