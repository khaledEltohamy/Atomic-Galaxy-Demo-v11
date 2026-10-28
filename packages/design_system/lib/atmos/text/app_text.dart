// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';
import 'package:tokens/tokens.dart';

class AppText extends StatelessWidget {
  const AppText(this.data, {super.key, this.style, this.color, this.textAlign, this.maxLines, this.overflow});
  final String data;
  final TextStyle? style;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    final tokens =
    Theme.of(context)
        .extension<DsThemeExtension>()!
        .tokens;
  return Text(
    data,
    maxLines: maxLines,
    overflow: overflow,
    textAlign: textAlign,
    style: (style ?? DefaultTextStyle.of(context).style).copyWith(
      color: color ?? tokens.textPrimary,
    ),
  );
  } 
}
