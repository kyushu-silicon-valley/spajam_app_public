import 'dart:async';

import 'package:flutter/material.dart';

enum _LargeButtonVariant {
  primary,
  secondary,
  disabled,
  warning,
}

class LargeButton extends StatelessWidget {
  /// 大きなボタン
  ///
  /// [LargeButton] : primaryカラーのボタン(default)
  ///
  /// [LargeButton.secondary] : secondaryカラーのボタン
  ///
  /// [LargeButton.disabled] : disabledカラーのボタン。この時はonPressedが必要ない
  ///
  /// [LargeButton.warning] : warningカラーのボタン

  const LargeButton({
    super.key,
    required this.text,
    required this.onPressed,
  }) : _variant = _LargeButtonVariant.primary;

  const LargeButton.secondary({
    super.key,
    required this.text,
    required this.onPressed,
  }) : _variant = _LargeButtonVariant.secondary;

  const LargeButton.disabled({
    super.key,
    required this.text,
  })  : _variant = _LargeButtonVariant.disabled,
        onPressed = null;

  const LargeButton.warning({
    super.key,
    required this.text,
    required this.onPressed,
  }) : _variant = _LargeButtonVariant.warning;

  final _LargeButtonVariant _variant;
  final String text;
  final FutureOr<void> Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 72),
        decoration: BoxDecoration(
          color: _getBackgroundColor(theme),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: _getTextColor(theme),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Color _getBackgroundColor(ThemeData theme) {
    switch (_variant) {
      case _LargeButtonVariant.primary:
        return theme.primaryColor;
      case _LargeButtonVariant.secondary:
        return theme.colorScheme.secondary.withOpacity(0.2);
      case _LargeButtonVariant.disabled:
        return theme.disabledColor;
      case _LargeButtonVariant.warning:
        return theme.colorScheme.error;
    }
  }

  Color _getTextColor(ThemeData theme) {
    switch (_variant) {
      case _LargeButtonVariant.primary:
      case _LargeButtonVariant.warning:
        return theme.colorScheme.onPrimary;
      case _LargeButtonVariant.secondary:
        return theme.colorScheme.secondary;
      case _LargeButtonVariant.disabled:
        return theme.colorScheme.onSurface.withOpacity(0.38);
    }
  }
}
