import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'env/env.dart';
import 'l10n/l10n.dart';
import 'providers/locale_provider.dart';
import 'providers/theme_mode_provider.dart';
import 'router.dart';
import 'utils/shared_preference_instance.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // supabaseの初期化
  await Supabase.initialize(
    url: Env.supabaseUrl,
    anonKey: Env.supabaseKey,
  );

  // shared_preferencesの初期化
  await SharedPreferencesInstance.initialize();

  const scopeApp = ProviderScope(child: MyApp());
  runApp(scopeApp);
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final locale = ref.watch(localeNotifierProvider);
    final themeMode = ref.watch(themeModeNotifierProvider);

    return MaterialApp.router(
      title: 'Sample App',
      debugShowCheckedModeBanner: false,

      /// localizations
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      locale: locale,

      /// Router
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,

      /// ThemeMode
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: ColorScheme(
          primary: const Color(0xFFFF5722), // プライマリーカラーをFF5722に設定
          onPrimary: Colors.white, // プライマリーカラー上のテキストは白
          secondary: const Color.fromARGB(255, 244, 122, 84), // 柔らかいピーチ系セカンダリーカラー
          onSecondary: Colors.black, // セカンダリーカラー上のテキストは黒
          surface: Colors.yellow.shade50, // サーフェスは白
          onSurface: Colors.black, // サーフェス上のテキストは黒
          error: const Color.fromARGB(255, 242, 50, 69), // 薄い赤のエラー
          onError: Colors.black, // エラー上のテキストは黒
          brightness: Brightness.light, // 背景上のテキストは黒
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme(
          primary: const Color(0xFFFF5722), // ダークモードでもFF5722をプライマリーに設定
          onPrimary: Colors.white, // プライマリーカラー上のテキストは白
          secondary:
              const Color.fromARGB(255, 244, 122, 84), // ダークモードのピーチ系セカンダリー
          onSecondary: Colors.white, // セカンダリーカラー上のテキストは白
          surface: Colors.grey.shade900, // サーフェスはダークグレー
          onSurface: Colors.white, // サーフェス上のテキストは白
          error: Colors.red.shade200, // ダークモードでの薄い赤
          onError: Colors.black, // エラー上のテキストは黒
          brightness: Brightness.dark, // ダークテーマ
        ),
      ),
      themeMode: themeMode,
    );
  }
}
