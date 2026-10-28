// GENERATED FILE - DO NOT EDIT BY HAND.
// ignore_for_file: unused_import, unused_local_variable

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

/// Page dots. The current dot stretches; tap a dot to jump when [onTap] is set.
class AppPageIndicator extends StatelessWidget {
  const AppPageIndicator({
    super.key,
    required this.count,
    required this.index,
    this.onTap,
    this.duration = const Duration(milliseconds: 250),
    this.activeColor,
    this.inactiveColor,
    this.dotSize,
    this.activeDotWidth,
    this.gap,
  });

  final int count;
  final int index;
  final ValueChanged<int>? onTap;
  final Duration duration;
  /// Current page dot. Defaults to `tokens.buttonPrimaryBackground`.
  final Color? activeColor;
  /// Other page dots. Defaults to `tokens.borderPrimary`.
  final Color? inactiveColor;
  /// Dot diameter. Defaults to `SpacingTokens.spacing8`.
  final double? dotSize;
  /// Width of the current dot. Defaults to `SpacingTokens.spacing24`.
  final double? activeDotWidth;
  /// Space between dots. Defaults to `SpacingTokens.spacing8`.
  final double? gap;

  @override
  Widget build(BuildContext context) {
    final tokens = context.ds;
    final Color on = (activeColor ?? tokens.buttonPrimaryBackground);
    final Color off = (inactiveColor ?? tokens.borderPrimary);
    final double size = (dotSize ?? SpacingTokens.spacing8);
    final double current = (activeDotWidth ?? SpacingTokens.spacing24);
    final double space = (gap ?? SpacingTokens.spacing8);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var i = 0; i < count; i++)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: space / 2),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onTap == null ? null : () => onTap!(i),
              child: AnimatedContainer(
                duration: duration,
                width: i == index ? current : size,
                height: size,
                decoration: BoxDecoration(
                  color: i == index ? on : off,
                  borderRadius: BorderRadius.circular(size),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
