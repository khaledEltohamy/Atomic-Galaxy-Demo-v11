// GENERATED FILE - DO NOT EDIT BY HAND.
// ignore_for_file: unused_import, unused_local_variable

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

/// Splash screen. Waits for [initialization] and at least [minDuration], then
/// calls [onFinished] (typically a route replacement).
class AppSplash extends StatefulWidget {
  const AppSplash({
    super.key,
    required this.onFinished,
    this.logo,
    this.title,
    this.initialization,
    this.minDuration = Duration.zero,
    this.showProgress = true,
    this.onError,
    this.maxContentWidth,
    this.backgroundColor,
    this.titleColor,
    this.progressColor,
    this.gap,
  });

  final VoidCallback onFinished;
  final Widget? logo;
  final String? title;

  /// Work to wait for (config, auth restore, ...). Null = none.
  final Future<void>? initialization;
  final Duration minDuration;
  final bool showProgress;

  /// Called when [initialization] throws. When null the error is rethrown.
  final void Function(Object error, StackTrace stackTrace)? onError;

  /// Limit the content width on large screens. Null = unlimited.
  final double? maxContentWidth;
  /// Screen background. Defaults to `tokens.backgroundPrimary`.
  final Color? backgroundColor;
  /// Title color. Defaults to `tokens.textPrimary`.
  final Color? titleColor;
  /// Progress indicator color. Defaults to `tokens.buttonPrimaryBackground`.
  final Color? progressColor;
  /// Space between logo, title and progress. Defaults to `SpacingTokens.spacing16`.
  final double? gap;

  @override
  State<AppSplash> createState() => _AppSplashState();
}

class _AppSplashState extends State<AppSplash> {
  @override
  void initState() {
    super.initState();
    _run();
  }

  Future<void> _run() async {
    try {
      await Future.wait<void>([
        Future<void>.delayed(widget.minDuration),
        widget.initialization ?? Future<void>.value(),
      ]);
    } catch (error, stackTrace) {
      if (widget.onError == null) rethrow;
      widget.onError!(error, stackTrace);
      return;
    }

    if (mounted) widget.onFinished();
  }

  @override
  Widget build(BuildContext context) {
    final tokens = context.ds;
    final Color page = (widget.backgroundColor ?? tokens.backgroundPrimary);
    final Color titleTint = (widget.titleColor ?? tokens.textPrimary);
    final Color spinner = (widget.progressColor ?? tokens.buttonPrimaryBackground);
    final double space = (widget.gap ?? SpacingTokens.spacing16);

    Widget column = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.logo != null) widget.logo!,
        if (widget.title != null) ...[
          SizedBox(height: space),
          Text(
            widget.title!,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: titleTint),
          ),
        ],
        if (widget.showProgress) ...[
          SizedBox(height: space),
          CircularProgressIndicator(color: spinner),
        ],
      ],
    );

    final limit = widget.maxContentWidth;
    if (limit != null) {
      column = ConstrainedBox(
        constraints: BoxConstraints(maxWidth: limit),
        child: column,
      );
    }

    return Scaffold(
      backgroundColor: page,
      body: SafeArea(child: Center(child: column)),
    );
  }
}
