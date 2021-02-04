import 'package:flutter/material.dart';
class B extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
              "B screen",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.normal))),
    );
  }
}
