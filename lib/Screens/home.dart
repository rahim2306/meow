// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tpmobdev/components/days_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> daysList = [
    'Saturday', 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'
  ];

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Text(
            'Home Page',
            style: GoogleFonts.spaceGrotesk(
              color: Colors.black,
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.white70,
        child: ListView.builder(
          controller: _controller,
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: daysList.length, 
          itemBuilder: (BuildContext context, int index) {
            return DaysCard(day: daysList[index]);
          },
        ),
      ),
    );
  }
}
