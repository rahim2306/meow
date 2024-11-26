// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_string_escapes, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tpmobdev/components/my_button.dart';
import 'package:tpmobdev/components/my_textfield.dart';
import 'package:tpmobdev/components/textButton.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  String? myValidateEmailFct (String? value) {
    const pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    final regex = RegExp(pattern);
    if (value!.isEmpty) { return "Email Can't be empty ";}
    else if (!regex.hasMatch(value)) { return 'Enter a valid email address';}
    return null;
  }

  String? myValidatePwdFct (String? value) {
    const pattern =r'^(?=.*[A-Z])(?=.*?[0-9])(?=.*?[ @#\&*~])';
    final regex = RegExp(pattern);
    if (value!.isEmpty) { return "Password Can't be empty "; }
    else if (!regex.hasMatch(value)) { return 'The password must be at least 8 characters \n and should contain at least one upper case, \n one digit, one special character among (@#\&*~)'; }
    return null; 
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController myEmailController = TextEditingController();
    TextEditingController mypassController = TextEditingController();
    TextEditingController mypassconfirmController = TextEditingController();
    
    final _myFormState = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(8),
          child: Form( 
            key: _myFormState,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: MediaQuery.sizeOf(context).height*0.1,),
                Text(
                  "create an account",
                  style: GoogleFonts.spaceGrotesk(
                    color: const Color.fromARGB(255, 17, 89, 148),
                    textStyle: TextStyle(
                      fontSize: 28
                    )
                  ),
                ),
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
                  myHintText: 'Email',
                  myController: myEmailController,
                  myValidator: (value) => myValidateEmailFct(myEmailController.text),
                  myIcon: Icon(Icons.lock),
                  isObscure: false,
                ),
                SizedBox(height: 16,),
                MyTextField(
                  myHintText: 'Password',
                  myController: mypassController,
                  myValidator: (value) => myValidatePwdFct(mypassController.text),
                  myIcon: Icon(Icons.lock),
                  isObscure: false,
                ),
                SizedBox(height: 16,),
                MyTextField(
                  myHintText: 'Confirm Password',
                  myController: mypassconfirmController,
                  myValidator: (value) => myValidatePwdFct(mypassController.text),
                  myIcon: Icon(Icons.lock),
                  isObscure: false,
                ),
                SizedBox(height: 16,),
                MyButton(
                  myOnpressedFct: () {
                    if(_myFormState.currentState!.validate()) {
                      Navigator.pushNamed(
                        context, 'Screens/home'
                      );
                      print("Valide");
                    } else {
                      print("Not Valide");
                    }
                  },
                  myButtonLabel: 'SignUp'
                ), 
                Text('or'),
                MyButton(
                  myOnpressedFct: () {},
                  myButtonLabel: 'SignUp with Google'
                ), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.spaceGrotesk(
            
                      )
                    ),
                    MyTextButton(
                      myButtonLabel: 'Login', 
                      myOnpressedFct: () { 
                      }
                    ),  
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}