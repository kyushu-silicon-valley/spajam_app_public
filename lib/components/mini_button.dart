import 'dart:async';

import 'package:flutter/material.dart';

enum _MiniButtonVariant {
  primary,
  secondary,
  disabled,
  warning,
  outlined,
}

class MiniButton extends StatelessWidget {
  /// 小さなボタン
  ///
  /// [MiniButton] : primaryカラーのボタン(default)
  ///
  /// [MiniButton.secondary] : secondaryカラーのボタン
  ///
  /// [MiniButton.disabled] : disabledカラーのボタン。この時はonPressedが必要ない
  ///
  /// [MiniButton.warning] : warningカラーのボタン
  ///
  /// [MiniButton.outlined] : outlinedカラーのボタン

  const MiniButton({
    super.key,
    required this.text,
    required this.onPressed,
  }) : _variant = _MiniButtonVariant.primary;

  const MiniButton.secondary({
    super.key,
    required this.text,
    required this.onPressed,
  }) : _variant = _MiniButtonVariant.secondary;

  const MiniButton.disabled({
    super.key,
    required this.text,
  })  : _variant = _MiniButtonVariant.disabled,
        onPressed = null;

  const MiniButton.warning({
    super.key,
    required this.text,
    required this.onPressed,
  }) : _variant = _MiniButtonVariant.warning;

  const MiniButton.outlined({
    super.key,
    required this.text,
    required this.onPressed,
  }) : _variant = _MiniButtonVariant.outlined;

  final _MiniButtonVariant _variant;
  final String text;
  final FutureOr<void> Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        decoration: BoxDecoration(
          color: _getBackgroundColor(theme),
          borderRadius: BorderRadius.circular(4),
          border: _getBorder(theme),
        ),
        child: Text(
          text,
          style: theme.textTheme.bodySmall?.copyWith(
            color: _getTextColor(theme),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Color _getBackgroundColor(ThemeData theme) {
    switch (_variant) {
      case _MiniButtonVariant.primary:
        return theme.primaryColor;
      case _MiniButtonVariant.secondary:
        return theme.colorScheme.secondary.withOpacity(0.2);
      case _MiniButtonVariant.disabled:
        return theme.disabledColor;
      case _MiniButtonVariant.warning:
        return theme.colorScheme.error;
      case _MiniButtonVariant.outlined:
        return theme.colorScheme.surface;
    }
  }

  Color _getTextColor(ThemeData theme) {
    switch (_variant) {
      case _MiniButtonVariant.primary:
      case _MiniButtonVariant.warning:
        return theme.colorScheme.onPrimary;
      case _MiniButtonVariant.secondary:
        return theme.colorScheme.secondary;
      case _MiniButtonVariant.disabled:
        return theme.colorScheme.onSurface.withOpacity(0.38);
      case _MiniButtonVariant.outlined:
        return theme.primaryColor;
    }
  }

  Border? _getBorder(ThemeData theme) {
    if (_variant == _MiniButtonVariant.outlined) {
      return Border.all(color: theme.primaryColor, width: 1);
    }
    return null;
  }
}
