import 'package:bottom_navigation_bar/Screen_page/AccountScreen.dart';
import 'package:bottom_navigation_bar/Screen_page/HomeScreen.dart';
import 'package:bottom_navigation_bar/Screen_page/MessageScreen.dart';
import 'package:bottom_navigation_bar/Screen_page/PhoneScreen.dart';
import 'package:bottom_navigation_bar/Screen_page/ProfileScreen.dart';
import 'package:bottom_navigation_bar/Screen_page/SettingsScreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selected = 0;
  final List<Widget> _pages =
      [
        HomeScreen(), // Create HomeScreen is your home page widget
        ProfileScreen(),
        SettingsScreen(),
        MessageScreen(),
        AccountScreen(),
        PhoneScreen(),
      ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // 1st AppBar part
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Buttom Navigation Bar "),
        centerTitle: true,
      ),

      // 2nd body part
      body: _pages[_selected],

      // 3rd bottomNavigationBar part
      bottomNavigationBar: BottomNavigationBar(
       // backgroundColor: Colors.deepOrangeAccent.shade200,
        currentIndex: _selected,
        selectedItemColor: Colors.white,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.white,),
              label: "Home",
              backgroundColor: Colors.deepOrangeAccent
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.white,),
              label: "Profile",
              backgroundColor: Colors.purpleAccent
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings,color: Colors.white,),
              label: "Settings",
              backgroundColor: Colors.cyan
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message,color: Colors.white,),
              label: "Message",
              backgroundColor: Colors.indigo
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.account_box,color: Colors.white,),
              label: "Account",
              backgroundColor: Colors.teal
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.call,color: Colors.white,),
              label: "Phone",
              backgroundColor: Colors.pink
          ),

        ],

        onTap: (index){
          setState(() {
            _selected= index;
          });
        },
      ),
    );
  }
}
