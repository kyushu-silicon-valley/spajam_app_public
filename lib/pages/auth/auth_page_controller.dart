import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../repositories/user_repository.dart';

part 'auth_page_controller.g.dart';

@riverpod
class AuthPageNotifier extends _$AuthPageNotifier {
  @override
  void build() {}

  Future<void> signUp({
    required String email,
    required String password,
    required String userName,
  }) async {
    await UserRepository().signUp(
      email: email,
      password: password,
      userName: userName,
    );
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    await UserRepository().signIn(
      email: email,
      password: password,
    );
  }
}
