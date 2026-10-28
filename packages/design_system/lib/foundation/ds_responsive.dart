// GENERATED FILE - DO NOT EDIT BY HAND.
// ignore_for_file: unused_import, unused_local_variable

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

enum DsWindowSize { compact, medium, expanded }

/// Material 3 window size classes. Override to taste per widget.
class DsBreakpoints {
  const DsBreakpoints({this.medium = 600, this.expanded = 840});

  /// Width at which layouts switch from compact to medium.
  final double medium;

  /// Width at which layouts switch from medium to expanded.
  final double expanded;

  DsWindowSize sizeFor(double width) {
    if (width >= expanded) return DsWindowSize.expanded;
    if (width >= medium) return DsWindowSize.medium;
    return DsWindowSize.compact;
  }
}

class DsResponsive {
  const DsResponsive._();

  /// Window size from the full screen width.
  static DsWindowSize sizeOf(
    BuildContext context, {
    DsBreakpoints breakpoints = const DsBreakpoints(),
  }) =>
      breakpoints.sizeFor(MediaQuery.sizeOf(context).width);
}

/// Builds a different layout per window size, measured on the space this
/// widget is given (so it also works inside split panes).
class DsResponsiveBuilder extends StatelessWidget {
  const DsResponsiveBuilder({
    super.key,
    required this.compact,
    this.medium,
    this.expanded,
    this.breakpoints = const DsBreakpoints(),
  });

  final WidgetBuilder compact;
  final WidgetBuilder? medium;
  final WidgetBuilder? expanded;
  final DsBreakpoints breakpoints;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        switch (breakpoints.sizeFor(constraints.maxWidth)) {
          case DsWindowSize.expanded:
            return (expanded ?? medium ?? compact)(context);
          case DsWindowSize.medium:
            return (medium ?? compact)(context);
          case DsWindowSize.compact:
            return compact(context);
        }
      },
    );
  }
}

/// Page body with window-size dependent padding and an optional readable
/// maximum width (centred), for web and tablet.
class DsResponsiveBody extends StatelessWidget {
  const DsResponsiveBody({
    super.key,
    required this.child,
    this.maxContentWidth,
    this.breakpoints = const DsBreakpoints(),
    this.compactPadding,
    this.mediumPadding,
    this.expandedPadding,
  });

  final Widget child;

  /// Content is centred and limited to this width. Null means unlimited.
  final double? maxContentWidth;

  final DsBreakpoints breakpoints;

  /// Horizontal page padding on compact (phone) widths. Defaults to `SpacingTokens.spacing16`.
  final double? compactPadding;
  /// Horizontal page padding on medium (tablet) widths. Defaults to `SpacingTokens.spacing24`.
  final double? mediumPadding;
  /// Horizontal page padding on expanded (desktop/web) widths. Defaults to `SpacingTokens.spacing24`.
  final double? expandedPadding;

  @override
  Widget build(BuildContext context) {
    final tokens = context.ds;

    return LayoutBuilder(
      builder: (context, constraints) {
        final size = breakpoints.sizeFor(constraints.maxWidth);
        final double padding = size == DsWindowSize.compact
            ? (compactPadding ?? SpacingTokens.spacing16)
            : (size == DsWindowSize.medium ? (mediumPadding ?? SpacingTokens.spacing24) : (expandedPadding ?? SpacingTokens.spacing24));

        final content = Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: child,
        );

        final limit = maxContentWidth;
        if (limit == null) return content;

        return Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: limit),
            child: content,
          ),
        );
      },
    );
  }
}
