import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../providers/theme_mode_provider.dart';

class ColorExample extends HookConsumerWidget {
  const ColorExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // テーマモードを取得するにはこれ
    final themeMode = ref.watch(themeModeNotifierProvider);
    // 色のスキーマを取得するにはこれ
    final themeColor = Theme.of(context).colorScheme;

    Widget colorBox(String name, Color color) {
      return Container(
        width: 80,
        height: 80,
        color: color,
        child: Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              name,
              style: TextStyle(
                color: color.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          ),
        ),
      );
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text('Theme Mode: $themeMode'),
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              colorBox('primary', themeColor.primary),
              colorBox('onPrimary', themeColor.onPrimary),
              colorBox('primaryContainer', themeColor.primaryContainer),
              colorBox('onPrimaryContainer', themeColor.onPrimaryContainer),
              colorBox('secondary', themeColor.secondary),
              colorBox('onSecondary', themeColor.onSecondary),
              colorBox('secondaryContainer', themeColor.secondaryContainer),
              colorBox('onSecondaryContainer', themeColor.onSecondaryContainer),
              colorBox('tertiary', themeColor.tertiary),
              colorBox('onTertiary', themeColor.onTertiary),
              colorBox('tertiaryContainer', themeColor.tertiaryContainer),
              colorBox('onTertiaryContainer', themeColor.onTertiaryContainer),
              colorBox('error', themeColor.error),
              colorBox('onError', themeColor.onError),
              colorBox('errorContainer', themeColor.errorContainer),
              colorBox('onErrorContainer', themeColor.onErrorContainer),
              colorBox('background', themeColor.surface),
              colorBox('onBackground', themeColor.onSurface),
              colorBox('surface', themeColor.surface),
              colorBox('onSurface', themeColor.onSurface),
              colorBox('surfaceVariant', themeColor.surfaceContainerHighest),
              colorBox('onSurfaceVariant', themeColor.onSurfaceVariant),
              colorBox('outline', themeColor.outline),
              colorBox('outlineVariant', themeColor.outlineVariant),
              colorBox('shadow', themeColor.shadow),
              colorBox('scrim', themeColor.scrim),
              colorBox('inverseSurface', themeColor.inverseSurface),
              colorBox('onInverseSurface', themeColor.onInverseSurface),
              colorBox('inversePrimary', themeColor.inversePrimary),
            ],
          ),
        ],
      ),
    );
  }
}
