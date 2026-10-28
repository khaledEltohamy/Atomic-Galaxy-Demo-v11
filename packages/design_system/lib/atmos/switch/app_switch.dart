// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';

class AppSwitch extends StatelessWidget {
  const AppSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.label,
  });

  final bool value;
  final ValueChanged<bool>? onChanged;
  final String? label;

  @override
  Widget build(BuildContext context) {
    final control = Switch(value: value, onChanged: onChanged);
    return label == null
        ? control
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [control, Text(label!)],
          );
  }
}
