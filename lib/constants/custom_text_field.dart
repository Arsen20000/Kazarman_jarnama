import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.hintText,
    this.labelText,
    this.controller,
    this.maxLines, 
    this.onTap,
  }) : super(key: key);

  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final int? maxLines;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap:onTap,
      maxLines: maxLines,
      cursorColor: Colors.blue,
      controller: controller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        label: Text(hintText ?? ''),
        hintText: hintText,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}
