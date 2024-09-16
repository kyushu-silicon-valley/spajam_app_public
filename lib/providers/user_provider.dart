import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/user_model.dart';
import '../repositories/user_repository.dart';
import 'current_session_provider.dart';

part 'user_provider.g.dart';

/// 現在ログインしているユーザーの情報を提供する
///
/// 未ログイン時にこのproviderを参照すると例外をスローする
@Riverpod(keepAlive: true)
Future<UserModel> userModelNotifier(UserModelNotifierRef ref) async {
  final currentUser = ref.watch(currentSessionProvider);
  if (currentUser == null) {
    throw Exception('User is not signed in');
  }
  final appUser = await UserRepository().getUserInfo(currentUser.id);
  return appUser;
}
