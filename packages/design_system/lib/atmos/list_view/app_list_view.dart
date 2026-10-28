// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';

class AppListView extends StatelessWidget {
  const AppListView({
    super.key,
    required this.children,
    this.padding,
  });

  final List<Widget> children;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) => ListView(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    padding: padding,
    children: children,
  );
}
