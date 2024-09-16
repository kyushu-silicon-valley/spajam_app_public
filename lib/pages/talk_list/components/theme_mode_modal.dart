import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../l10n/l10n.dart';
import '../../../providers/theme_mode_provider.dart';

class ThemeModeModal extends HookConsumerWidget {
  const ThemeModeModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 48),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(L10n.of(context)!.system),
            onTap: () {
              ref.read(themeModeNotifierProvider.notifier).setToSystem();
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.light_mode),
            title: Text(L10n.of(context)!.light),
            onTap: () {
              ref.read(themeModeNotifierProvider.notifier).setToLight();
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.dark_mode),
            title: Text(L10n.of(context)!.dark),
            onTap: () {
              ref.read(themeModeNotifierProvider.notifier).setToDark();
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
