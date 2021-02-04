
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:note_book/bottom_navigation.dart';
import 'package:note_book/components/custom_textfield.dart';
import 'package:note_book/screen/signin_screen.dart';
import 'package:note_book/screen/signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SignInScreen(),
      )
    );
  }
}
