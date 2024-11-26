// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tpmobdev/Screens/add_new_meal_page.dart';
import 'package:tpmobdev/Screens/details_page.dart';
import 'package:tpmobdev/Screens/home.dart';
import 'package:tpmobdev/Screens/login.dart';
import 'package:tpmobdev/Screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, deviceType){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'My Meal Planner',
          theme: ThemeData ( 
            appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            titleTextStyle: TextStyle( color: Colors.orange, fontSize: 17, fontWeight: FontWeight.bold,),
            iconTheme: IconThemeData( color: Colors.orange),),
          ),
          home: SignUp(),
          initialRoute: '/',
          routes: {
            'Screens/home': (context) => MyHomePage(),
            'Screens/login': (context) => Login(),
            'Screens/signup': (context) => SignUp(),
            'Screens/details_page': (context) => DetailsPage(),
            'Screens/add_new_meal_page': (context) => AddNewMealsPage()
          },
        );
      },
    );
  }
}
