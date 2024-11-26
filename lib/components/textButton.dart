// ignore_for_file: file_names, unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyTextButton extends StatelessWidget {
  final String myButtonLabel;
  final Function() myOnpressedFct;
  const MyTextButton({
    super.key,
    required this.myButtonLabel,
    required this.myOnpressedFct
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: myOnpressedFct,
      child: Text(
        myButtonLabel,
        style: GoogleFonts.spaceGrotesk(
          color: Colors.blueGrey
        )
      ),
    );
  }
}