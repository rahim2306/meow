// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:tpmobdev/components/meal_card.dart';
import 'package:tpmobdev/components/my_textfield.dart';
import 'package:tpmobdev/models/meal.dart';

class AddNewMealsPage extends StatefulWidget {

  const AddNewMealsPage({super.key});

  @override
  State<AddNewMealsPage> createState() => _AddNewMealsPageState();
}

class _AddNewMealsPageState extends State<AddNewMealsPage> {

  final TextEditingController MealNameCtrl = TextEditingController();
  final TextEditingController mealImgCtrl = TextEditingController();
  List<Meal> listOfMeals= [];
  GlobalKey<FormState> myFormState = GlobalKey<FormState>();
  List<MyTextField> listOfMyTextField= [];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: double.infinity,
          color: Colors.black26,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: height*0.1,),
              MyTextField(
                myHintText: 'Enter meals name', 
                myIcon: Icon(Icons.restaurant_menu), 
                myController: MealNameCtrl, 
                isObscure: false, 
                myValidator: (p0) => null,
              ),
              SizedBox(height: height*0.02,),
              MyTextField(
                myHintText: 'Enter Image Path', 
                myIcon: Icon(Icons.restaurant_menu), 
                myController: mealImgCtrl, 
                isObscure: false, 
                myValidator: (p0) => null,
              ),
              SizedBox(height: height*0.02,),
              Card(
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(width: MediaQuery.sizeOf(context).width*0.05,),
                          Text(
                            'List of ingredients',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          SizedBox(width: MediaQuery.sizeOf(context).width*0.20,),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if(listOfMeals.isNotEmpty){
                                  listOfMeals.removeLast();
                                  print("done");
                                } else {
                                  print("notdone");
                                }
                              });
                            },
                            icon: Icon(Icons.delete)
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                listOfMeals.add(Meal(name: MealNameCtrl.text, imgPath: mealImgCtrl.text , listOfIngredient: []));
                              });
                            },
                            icon: Icon(Icons.add)
                          ),
                          SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                        ],
                      ),

                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: listOfMeals.length,
                        itemBuilder: (context,i){
                          return MealCard(mealTMP:listOfMeals[i]);
                        }
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}