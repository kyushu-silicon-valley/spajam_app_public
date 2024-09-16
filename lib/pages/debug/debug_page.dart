import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../l10n/l10n.dart';
import '../../providers/locale_provider.dart';
import '../../providers/theme_mode_provider.dart';
import '../../providers/user_provider.dart';
import 'components/color_example.dart';
import 'debug_page_controller.dart';

/// sampleページの実装です。
/// カウンターアプリができています。
class DebugPage extends HookConsumerWidget {
  const DebugPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(counterNotifierProvider);

    // このようにしてローケル(ユーザーの言語情報)を取得できます
    final locale = ref.watch(localeNotifierProvider);

    // このようにして現在のテーマモードを取得できます
    // final themeMode = ref.watch(themeModeNotifierProvider);

    final user = ref.watch(userModelNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.of(context)!.goodBye),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              user.when(
                data: (u) => Text(u.name),
                error: (_, __) => const SizedBox.shrink(),
                loading: () =>  const SizedBox.shrink(),
              ),
              Text(locale.languageCode),
              const SizedBox(height: 8),
              const ColorExample(),
              const SizedBox(height: 8),
              Text(
                state.toString(),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  ref.read(counterNotifierProvider.notifier).increment();
                },
                child: const Text(
                  'Increment',
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  ref.read(themeModeNotifierProvider.notifier).setToLight();
                },
                child: const Text(
                  'light',
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  ref.read(themeModeNotifierProvider.notifier).setToDark();
                },
                child: const Text(
                  'dark',
                ),
              ),
              const SizedBox(height: 16),
              const Text('GoRouter'),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.go('/');
                    },
                    child: const Text(
                      'TalkList',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.go('/admin');
                    },
                    child: const Text(
                      'Admin',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.go('/auth');
                    },
                    child: const Text(
                      'Auth',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.push('/talk/99/debug');
                    },
                    child: const Text(
                      'Talk',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 64),
            ],
          ),
        ),
      ),
    );
  }
}
