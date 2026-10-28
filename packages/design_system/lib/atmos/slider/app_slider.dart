// GENERATED FILE - DO NOT EDIT BY HAND.
// ignore_for_file: unused_import, unused_local_variable

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

/// Slider whose colors come from the active brand.
class AppSlider extends StatelessWidget {
  const AppSlider({
    super.key,
    required this.value,
    required this.onChanged,
    this.min = 0.0,
    this.max = 1.0,
    this.divisions,
    this.label,
    this.activeColor,
    this.inactiveColor,
    this.thumbColor,
  });

  final double value;
  final ValueChanged<double>? onChanged;
  final double min;
  final double max;
  final int? divisions;
  final String? label;
  /// Filled part of the track. Defaults to `tokens.buttonPrimaryBackground`.
  final Color? activeColor;
  /// Unfilled part of the track. Defaults to `tokens.borderPrimary`.
  final Color? inactiveColor;
  /// Thumb color. Defaults to `tokens.buttonPrimaryBackground`.
  final Color? thumbColor;

  @override
  Widget build(BuildContext context) {
    final tokens = context.ds;

    return Slider(
      value: value,
      onChanged: onChanged,
      min: min,
      max: max,
      divisions: divisions,
      label: label,
      activeColor: (activeColor ?? tokens.buttonPrimaryBackground),
      inactiveColor: (inactiveColor ?? tokens.borderPrimary),
      thumbColor: (thumbColor ?? tokens.buttonPrimaryBackground),
    );
  }
}

class AppRangeSlider extends StatelessWidget {
  const AppRangeSlider({
    super.key,
    required this.values,
    required this.onChanged,
    this.min = 0.0,
    this.max = 1.0,
    this.divisions,
    this.labels,
    this.activeColor,
    this.inactiveColor,
  });

  final RangeValues values;
  final ValueChanged<RangeValues>? onChanged;
  final double min;
  final double max;
  final int? divisions;
  final RangeLabels? labels;
  /// Filled part of the track. Defaults to `tokens.buttonPrimaryBackground`.
  final Color? activeColor;
  /// Unfilled part of the track. Defaults to `tokens.borderPrimary`.
  final Color? inactiveColor;

  @override
  Widget build(BuildContext context) {
    final tokens = context.ds;

    return RangeSlider(
      values: values,
      onChanged: onChanged,
      min: min,
      max: max,
      divisions: divisions,
      labels: labels,
      activeColor: (activeColor ?? tokens.buttonPrimaryBackground),
      inactiveColor: (inactiveColor ?? tokens.borderPrimary),
    );
  }
}
