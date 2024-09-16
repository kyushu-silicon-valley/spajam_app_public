import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../l10n/l10n.dart';
import '../../../repositories/user_repository.dart';
import 'language_select_dialog.dart';
import 'theme_mode_modal.dart';

class SideMenu extends HookConsumerWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        children: [
          const SizedBox(height: 64),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(L10n.of(context)!.debugMode),
            onTap: () {
              context.push('/debug');
            },
          ),
          ListTile(
            leading: const Icon(Icons.admin_panel_settings),
            title: Text(L10n.of(context)!.aiAdmin),
            onTap: () {
              context.push('/admin');
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: Text(L10n.of(context)!.license),
            onTap: () {
              context.push('/license');
            },
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: Text(L10n.of(context)!.language),
            onTap: () {
              showDialog<void>(
                context: context,
                builder: (context) => const LanguageSelectorDialog(),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.light_mode),
            title: Text(L10n.of(context)!.themeMode),
            onTap: () async {
              await showModalBottomSheet<void>(
                context: context,
                builder: (context) {
                  return const ThemeModeModal();
                },
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Theme.of(context).colorScheme.error,
            ),
            title: Text(
              L10n.of(context)!.signOut,
              style: TextStyle(
                color: Theme.of(context).colorScheme.error,
              ),
            ),
            onTap: () async {
              await UserRepository().signOut();
            },
          ),
        ],
      ),
    );
  }
}
