// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({super.key, required this.title, required this.child, this.actions});
  final String title;
  final Widget child;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: Text(title),
    content: child,
    actions: actions,
  );

  static Future<T?> show<T>({required BuildContext context, required String title, required Widget child, List<Widget>? actions}) {
    return showDialog<T>(
      context: context,
      builder: (_) => AppDialog(title: title, child: child, actions: actions),
    );
  }
}

class AppDialogView extends StatelessWidget {
  const AppDialogView({super.key, required this.title, required this.child, this.actions});
  final String title;
  final Widget child;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) => AppDialog(title: title, child: child, actions: actions);
}
