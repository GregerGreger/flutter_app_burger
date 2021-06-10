import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OneButton extends StatefulWidget {
  final String nameButton;
  OneButton(this.nameButton);

  @override
  _OneButtonState createState() => _OneButtonState();
}

class _OneButtonState extends State<OneButton> {
  Color colorTrue = Color(0xFFFFC400);
  Color colorFalse = Colors.grey;

  bool chanchColor = false;

  changeColorMetod() {
    setState(() {
      chanchColor = !chanchColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  RawMaterialButton(
          onPressed: changeColorMetod,
          fillColor: chanchColor == true ? colorTrue : colorFalse,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          constraints: BoxConstraints(maxWidth: 150, maxHeight: 40),
          child: Center(
            child: Text(
              widget.nameButton,
              style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold),
            ),
          ),
        );
  }
}
