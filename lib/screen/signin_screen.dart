import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_book/bottom_navigation.dart';
import 'package:note_book/components/custom_button.dart';
import 'package:note_book/components/custom_textfield.dart';
import 'package:note_book/screen/home_screen.dart';
import 'package:note_book/screen/signup_screen.dart';
class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              ),
            Positioned(top: 200,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                //padding: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(80))
                ),
                child: Column(children: [
                  SizedBox(height: 80,),
                  Center(child: Text("Login",style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold))),
                  SizedBox(height: 50,),
                  CustomTextField(text: "Email"),
                  SizedBox(height: 20,),
                  CustomTextField(text: "Password"),
                  SizedBox(height: 30,),
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNavigation()));
                      },
                      child: CustomButton(text: "Sign In")),
                  SizedBox(height: 50,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account ?",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal)),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
                        },
                          child: Text("Sign Up",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.normal))),
                    ],
                  )
                ],),
              ),
            ),
          ],
        ),
      ),
    );
  }

}


