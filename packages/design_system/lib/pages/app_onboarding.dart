// GENERATED FILE - DO NOT EDIT BY HAND.
// ignore_for_file: unused_import, unused_local_variable

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

class AppOnboardingPage {
  const AppOnboardingPage({
    required this.title,
    this.description,
    this.assetPath,
    this.illustration,
  });

  final String title;
  final String? description;

  /// Asset path (e.g. a constant from generated assets_path.dart). Ignored
  /// when [illustration] is set.
  final String? assetPath;
  final Widget? illustration;
}

/// Onboarding flow: paged content, dot indicator, Skip / Next / Done.
///
/// Labels are required because the design system does not own your copy or
/// translations. Narrow screens stack illustration over text; wide screens put
/// them side by side.
class AppOnboarding extends StatefulWidget {
  const AppOnboarding({
    super.key,
    required this.pages,
    required this.onDone,
    required this.nextLabel,
    required this.doneLabel,
    this.skipLabel,
    this.onSkip,
    this.maxContentWidth,
    this.breakpoints = const DsBreakpoints(),
    this.backgroundColor,
    this.titleColor,
    this.descriptionColor,
    this.padding,
    this.gap,
  });

  final List<AppOnboardingPage> pages;
  final VoidCallback onDone;
  final String nextLabel;
  final String doneLabel;

  /// Skip is shown only when both [skipLabel] and [onSkip] are set.
  final String? skipLabel;
  final VoidCallback? onSkip;

  /// Centre and limit the content width (web / tablet). Null = unlimited.
  final double? maxContentWidth;
  final DsBreakpoints breakpoints;
  /// Screen background. Defaults to `tokens.backgroundPrimary`.
  final Color? backgroundColor;
  /// Page title color. Defaults to `tokens.textPrimary`.
  final Color? titleColor;
  /// Page description color. Defaults to `tokens.textSecondary`.
  final Color? descriptionColor;
  /// Screen padding. Defaults to `SpacingTokens.spacing24`.
  final double? padding;
  /// Space between illustration, text and controls. Defaults to `SpacingTokens.spacing16`.
  final double? gap;

  @override
  State<AppOnboarding> createState() => _AppOnboardingState();
}

class _AppOnboardingState extends State<AppOnboarding> {
  final PageController _controller = PageController();
  int _index = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool get _isLast => _index >= widget.pages.length - 1;

  void _next() {
    if (_isLast) {
      widget.onDone();
      return;
    }
    _controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  Widget _page(BuildContext context, AppOnboardingPage page, bool wide) {
    final tokens = context.ds;
    final Color titleTint = (widget.titleColor ?? tokens.textPrimary);
    final Color bodyTint = (widget.descriptionColor ?? tokens.textSecondary);
    final double space = (widget.gap ?? SpacingTokens.spacing16);
    final theme = Theme.of(context).textTheme;

    final Widget art = page.illustration ??
        (page.assetPath == null
            ? const SizedBox.shrink()
            : Image.asset(page.assetPath!, fit: BoxFit.contain));

    final text = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment:
          wide ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Text(
          page.title,
          textAlign: wide ? TextAlign.start : TextAlign.center,
          style: theme.headlineMedium?.copyWith(color: titleTint),
        ),
        if (page.description != null) ...[
          SizedBox(height: space),
          Text(
            page.description!,
            textAlign: wide ? TextAlign.start : TextAlign.center,
            style: theme.bodyLarge?.copyWith(color: bodyTint),
          ),
        ],
      ],
    );

    if (wide) {
      return Row(
        children: [
          Expanded(child: art),
          SizedBox(width: space * 2),
          Expanded(child: Center(child: text)),
        ],
      );
    }

    return Column(
      children: [
        Expanded(flex: 3, child: art),
        SizedBox(height: space),
        Expanded(flex: 2, child: Center(child: text)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final tokens = context.ds;
    final Color page = (widget.backgroundColor ?? tokens.backgroundPrimary);
    final double edge = (widget.padding ?? SpacingTokens.spacing24);
    final double space = (widget.gap ?? SpacingTokens.spacing16);

    final wide =
        DsResponsive.sizeOf(context, breakpoints: widget.breakpoints) !=
            DsWindowSize.compact;

    final showSkip = widget.skipLabel != null &&
        widget.onSkip != null &&
        !_isLast;

    Widget content = Padding(
      padding: EdgeInsets.all(edge),
      child: Column(
        children: [
          Expanded(
            child: AppPagedView(
              controller: _controller,
              itemCount: widget.pages.length,
              onPageChanged: (value) => setState(() => _index = value),
              itemBuilder: (context, index) =>
                  _page(context, widget.pages[index], wide),
            ),
          ),
          SizedBox(height: space),
          Row(
            children: [
              if (showSkip)
                TextButton(
                  onPressed: widget.onSkip,
                  child: Text(widget.skipLabel!),
                ),
              const Spacer(),
              FilledButton(
                onPressed: _next,
                child: Text(_isLast ? widget.doneLabel : widget.nextLabel),
              ),
            ],
          ),
        ],
      ),
    );

    final limit = widget.maxContentWidth;
    if (limit != null) {
      content = Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: limit),
          child: content,
        ),
      );
    }

    return Scaffold(
      backgroundColor: page,
      body: SafeArea(child: content),
    );
  }
}
