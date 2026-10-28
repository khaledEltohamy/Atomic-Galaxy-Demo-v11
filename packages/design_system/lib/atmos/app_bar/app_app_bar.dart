// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({super.key, this.title, this.leading, this.actions});
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) => AppBar(
    title: title,
    leading: leading,
    actions: actions,
  );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
