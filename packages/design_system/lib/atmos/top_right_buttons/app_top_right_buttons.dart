// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';
import 'package:tokens/tokens.dart';

class AppTopRightButtons extends StatelessWidget {
  const AppTopRightButtons({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
        final tokens =
    Theme.of(context)
        .extension<DsThemeExtension>()!
        .tokens;
final size = tokens.topRightButtonsComponentSize;    return SizedBox(
      width: size,
      height: size,
      child: Material(
        color: tokens.cardBackground,
        shape: const CircleBorder(),
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: onPressed,
          child: const Icon(Icons.more_vert, size: 20),
        ),
      ),
    );
  }
}
