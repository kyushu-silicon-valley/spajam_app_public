import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../utils/pref_key.dart';
import '../utils/shared_preference_instance.dart';

part 'theme_mode_provider.g.dart';

/// 現在のテーマモードを提供する
///
/// デフォルトでは端末の設定を引き継ぎ、ユーザーが明示的に変更を行なった場合はその値が参照されるようになる。
///
@Riverpod(keepAlive: true)
class ThemeModeNotifier extends _$ThemeModeNotifier {
  final prefs = SharedPreferencesInstance().prefs;
  @override
  ThemeMode build() {
    const system = ThemeMode.system;
    final loaded = prefs.getString(PrefKey.themeMode);
    final themeMode = loaded == null ? system : ThemeMode.values.byName(loaded);
    return themeMode;
  }

  /// ダークモードとライトモードを切り替える
  Future<void> toggle() async {
    final newTheme =
        state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    await prefs.setString(PrefKey.themeMode, newTheme.name);
  }

  /// ライトモードに変更する
  Future<void> setToLight() async {
    await prefs.setString(PrefKey.themeMode, ThemeMode.light.name);
    state = ThemeMode.light;
  }

  /// ダークモードに変更する
  Future<void> setToDark() async {
    await prefs.setString(PrefKey.themeMode, ThemeMode.dark.name);
    state = ThemeMode.dark;
  }

  /// システム設定に変更する
  Future<void> setToSystem() async {
    await prefs.setString(PrefKey.themeMode, ThemeMode.system.name);
    state = ThemeMode.system;
  }
}
