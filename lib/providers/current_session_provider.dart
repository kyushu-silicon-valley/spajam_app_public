import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'current_session_provider.g.dart';

@Riverpod(keepAlive: true)
User? currentSession(CurrentSessionRef ref) {
  final asyncState = ref.watch(currentUserStreamProvider);
  switch (asyncState) {
    case AsyncData(:final value):
      return value.session?.user;
    case AsyncLoading():
      return null;
    case AsyncError(:final error):
      throw Exception(error);
    default:
      return null;
  }
}

@Riverpod(keepAlive: true)
Stream<AuthState> currentUserStream(CurrentUserStreamRef ref) {
  return Supabase.instance.client.auth.onAuthStateChange;
}
