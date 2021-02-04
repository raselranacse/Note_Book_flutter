import 'package:flutter/material.dart';
import 'package:note_book/bottom_navigation.dart';
import 'package:note_book/components/custom_button.dart';
import 'package:note_book/components/custom_textfield.dart';
import 'package:note_book/screen/home_screen.dart';
import 'package:note_book/screen/signin_screen.dart';
class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
            ),
            Positioned(top: 150,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                //padding: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(80))
                ),
                child: Column(children: [
                  SizedBox(height: 40,),
                  Center(child: Text("Register",style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold))),
                  SizedBox(height: 40,),
                  CustomTextField(text: "User name"),
                  SizedBox(height: 20,),
                  CustomTextField(text: "Email"),
                  SizedBox(height: 20,),
                  CustomTextField(text: "Password"),
                  SizedBox(height: 20,),
                  CustomTextField(text: "Confirm Password"),
                  SizedBox(height: 30,),
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNavigation()));
                      },
                      child: CustomButton(text: "Sign Up")),
                  SizedBox(height: 30,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account.",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal)),
                      SizedBox(width: 10,),
                      GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInScreen()));
                          },
                          child: Text("Sign In",style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.normal))),
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
