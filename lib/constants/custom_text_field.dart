
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key, 
    this.hinText,
    this.labelText,
    this.controller,
  }) : super(key: key);
  final String? hinText;
  final String? labelText;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor:Colors.blue,
      controller: controller,
      textAlign:TextAlign.center ,
      decoration: InputDecoration(
        hintText:hinText,
        labelText:labelText ,
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40),
      
    ),
  ),
    );
  }
}