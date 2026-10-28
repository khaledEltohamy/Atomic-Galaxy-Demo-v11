// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';

class AppGrid extends StatelessWidget {
  const AppGrid({
    super.key,
    required this.children,
    this.crossAxisCount = 2,
    this.spacing = 8,
  });

  final List<Widget> children;
  final int crossAxisCount;
  final double spacing;

  @override
  Widget build(BuildContext context) => GridView.count(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: crossAxisCount,
    crossAxisSpacing: spacing,
    mainAxisSpacing: spacing,
    children: children,
  );
}
