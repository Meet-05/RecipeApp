import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String labelText;
  final Function onPressedFunction;
  final double size;
  final EdgeInsets padding;

  RoundedButton({
    this.labelText,
    this.onPressedFunction,
    this.size,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 8.0,
      fillColor: Color(0xFFFFFFFF),
      onPressed: onPressedFunction,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Padding(
        padding: padding,
        child: Text(
          labelText,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Cabin', fontSize: size, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
