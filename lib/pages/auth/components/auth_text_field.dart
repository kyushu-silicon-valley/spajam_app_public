import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthTextField extends HookConsumerWidget {
  const AuthTextField({
    required this.hintText,
    required this.controller,
    super.key,
  });

  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },
    );
  }
}
