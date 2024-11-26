// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class DaysCard extends StatelessWidget {
  final String day;
  const DaysCard({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Container(
      height: 8.h,
      padding: EdgeInsetsDirectional.symmetric( horizontal: 16),
      margin: EdgeInsetsDirectional.all( 16),
      decoration: BoxDecoration(
        border:Border.all(
          width: 2,
          color: Colors.black
        ),
        color:Colors.amber,
        borderRadius:BorderRadius.circular(8), 
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment(-1,0),
            child: Text(
              day,
              style: GoogleFonts.spaceGrotesk(
                color: Colors.black,
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                )
              ),
            )
          ),
          SizedBox(
            height: height*0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.visibility,
                size:height*0.02,
                color: Colors.black
              ),
              SizedBox(
                width: width*0.1,
              ),
              Icon(
                Icons.add,
                size:height*0.02,
                color: Colors.black
              )
            ],
          )
        ],
      ),
    );
  }
}