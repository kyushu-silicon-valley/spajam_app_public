import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../l10n/l10n.dart';
import '../../../providers/locale_provider.dart';

class LanguageSelectorDialog extends ConsumerWidget {
  const LanguageSelectorDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = ref.watch(localeNotifierProvider);
    return AlertDialog(
      title: Text(L10n.of(context)!.selectLanguage),
      content: SizedBox(
        height: 150,
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                L10n.of(context)!.selectLanguageCaution,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
            DropdownButton<Locale>(
              value: currentLocale,
              isExpanded: true,
              items: L10n.supportedLocales.map((Locale locale) {
                return DropdownMenuItem<Locale>(
                  value: locale,
                  child: Text(locale.languageCode),
                );
              }).toList(),
              onChanged: (Locale? newLocale) {
                if (newLocale != null) {
                  ref
                      .read(localeNotifierProvider.notifier)
                      .setLocale(newLocale);
                }
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(L10n.of(context)!.close),
        ),
      ],
    );
  }
}
