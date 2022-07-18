import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final void Function(Object?)? onChange;
  final List<DropdownMenuItem> item;
  final String? hintTxt;
  final void Function(dynamic) function;

  const CustomDropdown({
    Key? key,
    this.onChange,
    required this.item,
    required this.hintTxt,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      elevation: 10,
      hint: Text(hintTxt ?? ''),
      items: item,
      onChanged: function,
    );
  }
}
