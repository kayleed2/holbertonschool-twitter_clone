import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:core';

class CustomFlatButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  CustomFlatButton({
    super.key,
    this.label = 'submit',
    required this.onPressed,
    });

  @override
  Widget build(BuildContext context) {
     return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(30),
      ),
    // padding: const EdgeInsetsDirectional.only(top: 15, bottom: 15),
    child: TextButton(
      onPressed: () => onPressed(),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
  }
}
