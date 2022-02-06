import 'package:flutter/material.dart';

class TextFiledWidget extends StatelessWidget {
  String? hint;
  String? text;
  String? initValue;
  late TextEditingController controller;

  TextFiledWidget({this.hint, this.text, required this.controller,this.initValue});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initValue,
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        labelText: text,
      ),
    );
  }
}
