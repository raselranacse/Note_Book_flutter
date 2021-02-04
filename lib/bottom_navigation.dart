
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:note_book/screen/add_item_screen.dart';
import 'package:note_book/screen/B.dart';
import 'package:note_book/screen/C.dart';
import 'package:note_book/screen/D.dart';
import 'package:note_book/screen/E.dart';
import 'package:note_book/screen/home_screen.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final pages=[ HomeScreen(),AddItemScreen(), B(),  D()];
  var _page=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          onTap: (index){
            setState(() {
              _page=index;
            });
          },
          index: 0,
          color: Colors.blue,
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.white,
          animationDuration: Duration(milliseconds: 500),
          animationCurve: Curves.easeInOut,
          items: [
            Icon(Icons.email),
            Icon(Icons.explicit),
            Icon(Icons.settings),
            Icon(Icons.person),
            //Icon(Icons.dashboard),
          ]),
      body: pages[_page],
    );
  }
}
