// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';
import 'package:tokens/tokens.dart';
import '../text/app_text.dart';

class AppRadio<T> extends StatelessWidget {
  const AppRadio({super.key, required this.value, required this.groupValue, required this.onChanged, this.label});
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final String? label;

  @override
  Widget build(BuildContext context) {
  final tokens =
    Theme.of(context)
        .extension<DsThemeExtension>()!
        .tokens;
    final radio = Radio<T>(
  value: value,
  groupValue: groupValue,
  onChanged: onChanged,
  activeColor:
      tokens.radioSelected,
);
    return label == null ? radio : Row(mainAxisSize: MainAxisSize.min, children: [radio, AppText(label!)]);
  }
}
