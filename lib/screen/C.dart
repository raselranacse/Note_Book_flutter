import 'package:flutter/material.dart';
class C extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
              "C screen",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.normal))),
    );
  }
}
