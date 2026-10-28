// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';

class AppCardSection extends StatelessWidget {
  const AppCardSection({super.key, this.title, required this.children});
  final String? title;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) => Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [if (title != null) Padding(padding: const EdgeInsets.only(bottom: 16), child: Text(title!, style: Theme.of(context).textTheme.titleLarge)), ...children]);
}
