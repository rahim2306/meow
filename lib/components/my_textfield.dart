// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {

  final String myHintText;
  final Icon myIcon;
  final TextEditingController? myController;
  final bool isObscure;
  final String? Function(String?) myValidator;

  const MyTextField({
    super.key, 
    required this.myHintText,
    required this.myIcon,
    required this.myController,
    required this.isObscure, 
    required this.myValidator
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: myValidator,
      controller: myController,
      obscureText: isObscure,
      decoration: InputDecoration(
        hintText: myHintText,
        hintStyle: GoogleFonts.spaceGrotesk(
          color: Colors.black,
          textStyle: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w600
          )
        ),
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.blue,
        prefixIcon: myIcon
      ),
    );
  }
}