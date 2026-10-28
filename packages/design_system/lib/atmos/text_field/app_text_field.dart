// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';
import 'package:design_system/design_system.dart';
import 'package:tokens/tokens.dart';
import 'text_field_variant.dart';



class AppTextField extends StatelessWidget {
  const AppTextField({super.key, this.controller, this.label, this.hintText, this.enabled = true, this.obscureText = false, this.keyboardType, this.onChanged, this.onSubmitted, this.validator, this.focusNode, this.variant = DsTextFieldVariant.defaultStyle});
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final bool enabled;
  final bool obscureText;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FormFieldValidator<String>? validator;
  final FocusNode? focusNode;
  final DsTextFieldVariant variant;

  @override
  Widget build(BuildContext context) {
  final tokens =
    Theme.of(context)
        .extension<DsThemeExtension>()!
        .tokens;

final cloudy =
    variant == DsTextFieldVariant.cloudy;

final borderColor =
    cloudy
        ? tokens.inputBorderCloudy
        : tokens.inputBorder;

return TextFormField(
  controller: controller,
  focusNode: focusNode,
  enabled: enabled,
  obscureText: obscureText,
  keyboardType: keyboardType,
  onChanged: onChanged,
  onFieldSubmitted: onSubmitted,
  validator: validator,
  style: TextStyle(
    color: tokens.inputText,
  ),
  decoration: InputDecoration(
    labelText: label,
    hintText: hintText,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    filled: true,
    fillColor: cloudy
        ? tokens.backgroundSecondary
        : tokens.inputBackground,
    labelStyle: TextStyle(
      color: tokens.textPrimary,
    ),
    hintStyle: TextStyle(
      color: tokens.inputPlaceholder,
    ),
    contentPadding: EdgeInsets.all(
      tokens.textfieldComponentPadding,
    ),
    border: _border(
      borderColor,
      tokens.textfieldComponentRadius,
    ),
    enabledBorder: _border(
      borderColor,
      tokens.textfieldComponentRadius,
    ),
    focusedBorder: _border(
      tokens.focusBorder,
      tokens.textfieldComponentRadius,
    ),
  ),
);
  }

  OutlineInputBorder _border(Color color , raduis) => OutlineInputBorder(borderRadius: BorderRadius.circular(raduis), borderSide: BorderSide(color: color));
}
