import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../l10n/l10n.dart';

class PasswordField extends HookConsumerWidget {
  const PasswordField({
    required this.controller,
    super.key,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isObscured = useState(true);
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: L10n.of(context)!.password,
        suffixIcon: IconButton(
          icon: Icon(
            isObscured.value
                ? Icons.remove_red_eye
                : Icons.visibility_off,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {
            isObscured.value = !isObscured.value;
          },
        ),
      ),
      obscureText: isObscured.value,
      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },
    );
  }
}
