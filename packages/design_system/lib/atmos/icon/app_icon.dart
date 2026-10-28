// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(this.icon, {super.key, this.size, this.color});
  final IconData icon;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
      final tokens =
    Theme.of(context)
        .extension<DsThemeExtension>()!
        .tokens;
  return Icon(icon, size: size, color: color ?? tokens.iconPrimary);
  }
  
}
