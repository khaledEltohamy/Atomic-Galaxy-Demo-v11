// GENERATED FILE - DO NOT EDIT BY HAND.
import 'package:flutter/material.dart';
import '../../atmos/text_field/text_field.dart';

class AppFormField extends StatelessWidget {
  const AppFormField({super.key, required this.label, this.hintText, this.controller, this.validator});
  final String label;
  final String? hintText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  @override
  Widget build(BuildContext context) => AppTextField(label: label, hintText: hintText, controller: controller, validator: validator);
}
