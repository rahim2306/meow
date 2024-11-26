// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tpmobdev/Screens/home.dart';
import 'package:tpmobdev/components/my_button.dart';
import 'package:tpmobdev/components/my_textfield.dart';
import 'package:tpmobdev/components/textButton.dart';


class Login extends StatelessWidget {
  const Login({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,

          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height*0.1,),
              Text(
                "Welcome To My App",
                style: GoogleFonts.spaceGrotesk(
                  color: const Color.fromARGB(255, 17, 89, 148),
                  textStyle: TextStyle(
                    fontSize: 28
                  )
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.08,),
              GestureDetector(
                onTap: () {
                  Fluttertoast.showToast(  
                    msg: 'This is toast notification',  
                    toastLength: Toast.LENGTH_SHORT,  
                    gravity: ToastGravity.BOTTOM,  
                    timeInSecForIosWeb: 1,  
                    backgroundColor: Colors.red,  
                    textColor: Colors.yellow  
                  );
                },
                child: CircleAvatar(
                  child: Image.asset('assets/images/download.png'),
                  radius: 60,
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text('meow')),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.08,),
              MyTextField(
                myHintText: 'Username',
                myController: null,
                myValidator: (p0) => null,
                myIcon: Icon(Icons.person),
                isObscure: false,
              ),
              SizedBox(height: 16,),
              MyTextField(
                myHintText: 'Password',
                myController: null,
                myValidator: (p0) => null,
                myIcon: Icon(Icons.lock),
                isObscure: false,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.1,),
              MyButton(
                myOnpressedFct: () {},
                myButtonLabel: 'Login'
              ), 
              MyTextButton(
                myButtonLabel: 'forgot Password', 
                myOnpressedFct: () => (),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have An Acount ?',
                    style: GoogleFonts.spaceGrotesk(

                    )
                  ),
                  MyTextButton(
                    myButtonLabel: 'SignUp', 
                    myOnpressedFct: () => (),
                  ),  
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}