// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tpmobdev/models/meal.dart';


class MealCard extends StatelessWidget {
  final Meal mealTMP;
  const MealCard({super.key, required this.mealTMP});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.amberAccent,
        child: Column(
          children: [
            Text(
              "Name: ${mealTMP.name}",
            ),
            Text(
              "Name: ${mealTMP.imgPath}",
            ),
          ],
        )
      ),
    );
  }
}