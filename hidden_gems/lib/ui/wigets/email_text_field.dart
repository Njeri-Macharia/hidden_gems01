import 'package:flutter/material.dart';
import 'package:hidden_gems/ui/constants/auth_custom_text_field.dart';
import 'package:hidden_gems/ui/constants/colors.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final FormFieldValidator<String>? validator;
  final Function(String?)? onSaved;

  const EmailTextField(
    this.controller, {
    super.key,
    this.labelText = 'Email or phone number',
    this.validator,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return AuthCustomTextField(
      controller: controller,
      hintText: labelText,
      prefixIcon: const Icon(Icons.email, color: authTextColor),
      validator: validator,
      onSaved: onSaved,
    );
  }
}
