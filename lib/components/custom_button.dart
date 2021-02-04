import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.06,
      width: MediaQuery.of(context).size.width*.85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
          color: Colors.black
      ),
      child: Center(
          child: Text(
              text,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal))),
    );
  }
}