// GENERATED FILE - DO NOT EDIT BY HAND.

import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';
import 'package:design_system/design_system.dart';
import 'button_variant.dart';

class DsButton extends StatelessWidget {
  const DsButton({
    super.key,
    required this.label,
    this.onPressed,
    this.variant =
        DsButtonVariant.primary,
    this.icon,
    this.enabled = true,
  });

  final String label;
  final VoidCallback? onPressed;
  final DsButtonVariant variant;
  final Widget? icon;
  final bool enabled;

  @override
  Widget build(
    BuildContext context,
  ) {
    final theme =
        Theme.of(context)
            .extension<DsThemeExtension>();

    final tokens =
        theme?.tokens;

    if (tokens == null) {
      return const SizedBox.shrink();
    }

    final style =
        _resolveStyle(
      tokens,
      variant,
    );

    final child =
        icon == null
            ? Text(label)
            : Row(
                mainAxisSize:
                    MainAxisSize.min,
                children: [
                  icon!,
                  Text(label),
                ],
              );

    return ElevatedButton(
      onPressed:
          enabled ? onPressed : null,
      style:
          ButtonStyle(
        backgroundColor:
            WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(
              WidgetState.disabled,
            )) {
              return style.disabledBackground;
            }

            if (states.contains(
              WidgetState.pressed,
            )) {
              return style.pressedBackground;
            }

            if (states.contains(
              WidgetState.hovered,
            )) {
              return style.hoverBackground;
            }

            return style.background;
          },
        ),
        foregroundColor:
            WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(
              WidgetState.disabled,
            )) {
              return style.disabledForeground;
            }

            return style.foreground;
          },
        ),
        shape:
            WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(
              style.radius,
            ),
            side:
                BorderSide(
              color:
                  style.border,
            ),
          ),
        ),
      ),
      child: child,
    );
  }

  _ButtonStyle _resolveStyle(
    dynamic tokens,
    DsButtonVariant variant,
  ) {
    switch (variant) {
      case DsButtonVariant.primary:
        return _ButtonStyle(
          background:
              tokens.buttonPrimaryBackground,
          foreground:
              tokens.buttonPrimaryText,
          border:
              tokens.buttonPrimaryBorder,
          radius:
              tokens.buttonComponentPrimaryRadius,
          hoverBackground:
              tokens.buttonPrimaryHover,
          pressedBackground:
              tokens.buttonPrimaryPressed,
          disabledBackground:
              tokens.buttonPrimaryDisabled,
          disabledForeground:
              tokens.textDisabled,
        );
      case DsButtonVariant.secondary:
        return _ButtonStyle(
          background:
              tokens.buttonSecondaryBackground,
          foreground:
              tokens.buttonSecondaryText,
          border:
              tokens.buttonSecondaryBorder,
          radius:
              tokens.buttonComponentSecondaryRadius,
          hoverBackground:
              tokens.buttonSecondaryBackground,
          pressedBackground:
              tokens.buttonSecondaryBackground,
          disabledBackground:
              tokens.buttonSecondaryBackground,
          disabledForeground:
              tokens.textDisabled,
        );
      case DsButtonVariant.tertiary:
        return _ButtonStyle(
          background:
              tokens.buttonTertiaryBackground,
          foreground:
              tokens.buttonTertiaryText,
          border:
              tokens.buttonTertiaryBorder,
          radius:
              tokens.buttonComponentTertiaryRadius,
          hoverBackground:
              tokens.buttonTertiaryBackground,
          pressedBackground:
              tokens.buttonTertiaryBackground,
          disabledBackground:
              tokens.buttonTertiaryBackground,
          disabledForeground:
              tokens.textDisabled,
        );
    }
  }
}

class _ButtonStyle {
  const _ButtonStyle({
    required this.background,
    required this.foreground,
    required this.border,
    required this.radius,
    required this.hoverBackground,
    required this.pressedBackground,
    required this.disabledBackground,
    required this.disabledForeground,
  });

  final Color background;
  final Color foreground;
  final Color border;
  final double radius;

  final Color hoverBackground;
  final Color pressedBackground;
  final Color disabledBackground;
  final Color disabledForeground;
}
