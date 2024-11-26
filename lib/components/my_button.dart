// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tpmobdev/Screens/home.dart';

class MyButton extends StatelessWidget {

  final Function()? myOnpressedFct;
  final String myButtonLabel;

  const MyButton({
    super.key,
    this.myOnpressedFct,
    required this.myButtonLabel
  });
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7.h,
      width: 90.w,
      child: ElevatedButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage(),)
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.yellowAccent,
          foregroundColor: Colors.blueGrey,
          side: BorderSide(
            width: 1,
            color: Colors.black
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))
          ),
          padding: EdgeInsets.all(8),
          textStyle: GoogleFonts.spaceGrotesk(
            color: Colors.black87,
            textStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28
            )
          )
        ),
        child: Text(
          myButtonLabel
        )
      ),
    );
  }
}