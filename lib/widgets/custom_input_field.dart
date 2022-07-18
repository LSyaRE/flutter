import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintTxt;
  final String labelTxt;
  final String? helperTxt;
  final bool? autoFocus;
  final bool? obscureText;
  final TextInputType? keyBoardType;
  final Icon? iconEntry;
  final Icon? sufixIcon;
  final Map<String, String> formValues;
  final String formProperty;

  const CustomInputField({
    Key? key,
    this.iconEntry,
    this.sufixIcon,
    this.hintTxt,
    required this.labelTxt,
    this.helperTxt,
    this.autoFocus,
    this.keyBoardType,
    this.obscureText,
    required this.formValues,
    required this.formProperty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus ?? false,
      keyboardType: keyBoardType,
      obscureText: obscureText ?? false,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) {
          return 'Obligatorio';
        }

        if (value.length < 3) return 'No puede tener menos de 2 caracteres';
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: hintTxt,
          labelText: labelTxt,
          helperText: helperTxt,
          suffixIcon: sufixIcon,
          icon: iconEntry),
    );
  }
}
