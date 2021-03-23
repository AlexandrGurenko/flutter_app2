import 'package:flutter/material.dart';

class RegTextField extends StatelessWidget {
  final String hintText;
  final BoxDecoration decoration;
  final TextStyle hintTextStyle;

  const RegTextField({Key key, this.hintText, this.decoration, this.hintTextStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      margin: const EdgeInsets.symmetric(vertical: 7),
      decoration: decoration,
      child: TextField(
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: hintTextStyle,
        ),
      ),
    );
  }
}
