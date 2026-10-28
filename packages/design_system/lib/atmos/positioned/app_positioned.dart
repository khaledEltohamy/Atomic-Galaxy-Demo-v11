// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';

class AppPositioned extends StatelessWidget {
  const AppPositioned({
    super.key,
    required this.child,
    this.left,
    this.top,
    this.right,
    this.bottom,
  });

  final Widget child;
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;

  @override
  Widget build(BuildContext context) => Positioned(
    left: left,
    top: top,
    right: right,
    bottom: bottom,
    child: child,
  );
}
