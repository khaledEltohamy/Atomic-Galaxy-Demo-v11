// GENERATED FILE - DO NOT EDIT BY HAND.

import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

class DsThemeExtension
    extends ThemeExtension<DsThemeExtension> {
  const DsThemeExtension({
    required this.tokens,
  });

  final dynamic tokens;

  @override
  DsThemeExtension copyWith({
    dynamic tokens,
  }) {
    return DsThemeExtension(
      tokens: tokens ?? this.tokens,
    );
  }

  @override
  DsThemeExtension lerp(
    covariant ThemeExtension<DsThemeExtension>? other,
    double t,
  ) {
    if (other is! DsThemeExtension) {
      return this;
    }

    return t < .5 ? this : other;
  }
}
