// GENERATED FILE - DO NOT EDIT BY HAND.
// ignore_for_file: unused_import, unused_local_variable

import 'dart:ui' show PointerDeviceKind;

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

/// PageView.builder with a dot indicator.
///
/// * Mouse / trackpad dragging works (needed on web and desktop).
/// * Arrows appear automatically on medium and expanded widths.
/// * Give it a bounded height (`height:` or a parent) when the indicator is
///   below the pages.
class AppPagedView extends StatefulWidget {
  const AppPagedView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.controller,
    this.onPageChanged,
    this.initialPage = 0,
    this.height,
    this.scrollDirection = Axis.horizontal,
    this.showIndicator = true,
    this.indicatorOverlay = false,
    this.showArrows,
    this.viewportFraction = 1.0,
    this.animationDuration = const Duration(milliseconds: 300),
    this.curve = Curves.easeOut,
    this.breakpoints = const DsBreakpoints(),
    this.indicatorPadding,
    this.arrowColor,
  });

  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final PageController? controller;
  final ValueChanged<int>? onPageChanged;
  final int initialPage;
  final double? height;
  final Axis scrollDirection;
  final bool showIndicator;

  /// Draw the indicator over the pages instead of below them.
  final bool indicatorOverlay;

  /// Null = show arrows on medium and expanded widths only.
  final bool? showArrows;
  final double viewportFraction;
  final Duration animationDuration;
  final Curve curve;
  final DsBreakpoints breakpoints;
  /// Space around the indicator. Defaults to `SpacingTokens.spacing16`.
  final double? indicatorPadding;
  /// Previous / next arrow color. Defaults to `tokens.iconPrimary`.
  final Color? arrowColor;

  @override
  State<AppPagedView> createState() => _AppPagedViewState();
}

class _AppPagedViewState extends State<AppPagedView> {
  late final PageController _controller;
  late final bool _ownsController;
  late int _index;

  @override
  void initState() {
    super.initState();
    _ownsController = widget.controller == null;
    _controller = widget.controller ??
        PageController(
          initialPage: widget.initialPage,
          viewportFraction: widget.viewportFraction,
        );
    _index = _controller.initialPage;
  }

  @override
  void dispose() {
    if (_ownsController) _controller.dispose();
    super.dispose();
  }

  void _go(int target) {
    if (target < 0 || target >= widget.itemCount) return;
    _controller.animateToPage(
      target,
      duration: widget.animationDuration,
      curve: widget.curve,
    );
  }

  @override
  Widget build(BuildContext context) {
    final tokens = context.ds;
    final double space = (widget.indicatorPadding ?? SpacingTokens.spacing16);
    final Color arrows = (widget.arrowColor ?? tokens.iconPrimary);

    final size = DsResponsive.sizeOf(context, breakpoints: widget.breakpoints);
    final withArrows =
        widget.showArrows ?? size != DsWindowSize.compact;

    final pages = ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
          PointerDeviceKind.trackpad,
          PointerDeviceKind.stylus,
        },
      ),
      child: PageView.builder(
        controller: _controller,
        scrollDirection: widget.scrollDirection,
        itemCount: widget.itemCount,
        itemBuilder: widget.itemBuilder,
        onPageChanged: (value) {
          setState(() => _index = value);
          widget.onPageChanged?.call(value);
        },
      ),
    );

    final indicator = (widget.showIndicator && widget.itemCount > 1)
        ? AppPageIndicator(
            count: widget.itemCount,
            index: _index,
            onTap: _go,
          )
        : null;

    Widget content;
    if (indicator == null) {
      content = pages;
    } else if (widget.indicatorOverlay) {
      content = Stack(
        children: [
          Positioned.fill(child: pages),
          Positioned(
            left: 0,
            right: 0,
            bottom: space,
            child: Center(child: indicator),
          ),
        ],
      );
    } else {
      content = Column(
        children: [
          Expanded(child: pages),
          Padding(
            padding: EdgeInsets.symmetric(vertical: space),
            child: indicator,
          ),
        ],
      );
    }

    if (withArrows && widget.itemCount > 1) {
      content = Stack(
        children: [
          Positioned.fill(child: content),
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Center(
              child: IconButton(
                color: arrows,
                icon: const Icon(Icons.chevron_left),
                onPressed: _index > 0 ? () => _go(_index - 1) : null,
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: Center(
              child: IconButton(
                color: arrows,
                icon: const Icon(Icons.chevron_right),
                onPressed: _index < widget.itemCount - 1
                    ? () => _go(_index + 1)
                    : null,
              ),
            ),
          ),
        ],
      );
    }

    final fixed = widget.height;
    if (fixed == null) return content;

    return SizedBox(height: fixed, child: content);
  }
}
