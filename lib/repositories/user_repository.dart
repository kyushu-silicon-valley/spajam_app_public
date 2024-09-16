import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/user_model.dart';

/// Userに関するデータの取得や更新を行う
///
/// supabaseを利用している。
class UserRepository {
  Future<User> signUp({
    required String email,
    required String password,
    required String userName,
    bool isAdmin = false,
  }) async {
    try {
      final supabase = Supabase.instance.client;
      final response = await supabase.auth.signUp(
        email: email,
        password: password,
        data: {'name': userName},
      );

      if (response.user == null) {
        throw const AuthException('Failed to Sign Up"}');
      }
      return response.user!;
    } on AuthException {
      rethrow;
    } catch (e) {
      throw AuthException('Failed to Sign Up: $e');
    }
  }

  Future<User> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final supabase = Supabase.instance.client;
      final response = await supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (response.user == null) {
        throw const AuthException('Failed to Sign In');
      }

      return response.user!;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signOut() async {
    final supabase = Supabase.instance.client;
    await supabase.auth.signOut();
  }

  Future<UserModel> getUserInfo(String userId) async {
    final supabase = Supabase.instance.client;
    final response = await supabase.from('users').select().eq('id', userId);
    if (response.isEmpty || response.length > 1) {
      throw Exception('Failed to get user info: User not found');
    }
    print(response.first);
    return UserModel.fromJson(
      response.first,
    );
  }
}
