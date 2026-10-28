// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';

class AppBottomSheet {
  const AppBottomSheet._();
  static Future<T?> show<T>({required BuildContext context, required Widget child, bool isScrollControlled = true}) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: isScrollControlled,
      builder: (_) => SafeArea(child: child),
    );
  }
}

class AppBottomSheetView extends StatelessWidget {
  const AppBottomSheetView({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) => Material(child: SafeArea(child: child));
}
