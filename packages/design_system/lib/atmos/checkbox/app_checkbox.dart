// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';

/// A checkbox with its label AFTER the box, as drawn in the design.
///
/// By default it keeps its own state, starting at [initialValue], so it
/// toggles when tapped. Pass [value] to control it from outside instead.
class AppCheckbox extends StatefulWidget {
  const AppCheckbox({
    super.key,
    this.value,
    this.initialValue = false,
    this.onChanged,
    this.label,
    this.gap = 12,
  });

  final bool? value;
  final bool initialValue;
  final ValueChanged<bool>? onChanged;
  final String? label;
  final double gap;

  @override
  State<AppCheckbox> createState() => _AppCheckboxState();
}

class _AppCheckboxState extends State<AppCheckbox> {
  late bool _checked = widget.value ?? widget.initialValue;

  bool get _current => widget.value ?? _checked;

  void _toggle() {
    final next = !_current;
    setState(() => _checked = next);
    widget.onChanged?.call(next);
  }

  @override
  Widget build(BuildContext context) {
    final tokens =
        Theme.of(context).extension<DsThemeExtension>()!.tokens;

    final box = SizedBox(
      width: 22,
      height: 22,
      child: Checkbox(
        value: _current,
        onChanged: (_) => _toggle(),
        activeColor: tokens.buttonPrimaryBackground,
        checkColor: tokens.buttonPrimaryText,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),
    );

    final text = widget.label;

    return InkWell(
      onTap: _toggle,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          box,
          if (text != null) ...[
            SizedBox(width: widget.gap),
            Text(text, style: TextStyle(color: tokens.textPrimary)),
          ],
        ],
      ),
    );
  }
}
