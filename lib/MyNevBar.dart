import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation_menu_animated/Pages/Page1.dart';
import 'package:flutter_navigation_menu_animated/Pages/Page2.dart';
import 'package:flutter_navigation_menu_animated/Pages/Page3.dart';
import 'package:flutter_navigation_menu_animated/Pages/Page4.dart';

class MyNevBar extends StatefulWidget {
  @override
  _MyNevBarState createState() => _MyNevBarState();
}

class _MyNevBarState extends State<MyNevBar>
{
  int currentIndex = 0;

  List listOfPages = [Page1(), Page2(), Page3(), Page4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listOfPages[currentIndex],

      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(icon: Icon(Icons.home), title: Text('Home'),),
          BottomNavyBarItem(icon: Icon(Icons.circle_notifications), title: Text('Notification'),),
          BottomNavyBarItem(icon: Icon(Icons.message), title: Text('Chat'),),
          BottomNavyBarItem(icon: Icon(Icons.person), title: Text('Profile'), ), //activeColor: Colors.blueAccent, inactiveColor: Colors.lightGreenAccent,
        ],
      ),
    );
  }
}