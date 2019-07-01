import 'package:flutter/material.dart';
import 'package:rio7phonebook/screen/index_screen.dart';
import 'package:rio7phonebook/screen/phone_main.dart';
import 'package:rio7phonebook/screen/search_screen.dart';
import 'package:rio7phonebook/screen/about_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List pages = [IndexScreen(), PhoneMain(), SearchScreen(), AboutScreen()];

  @override
  Widget build(BuildContext context) {
    Widget bottomNavBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.blue,
      fixedColor: Colors.yellow,
      unselectedItemColor: Colors.white,
      currentIndex: currentIndex,
      onTap: (int index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('หน้าแรก')),
        BottomNavigationBarItem(
            icon: Icon(Icons.contacts), title: Text('สมุดโทรศัพท์')),
        BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('ค้นหา')),
        BottomNavigationBarItem(
            icon: Icon(Icons.info_outline), title: Text('เกี่ยวกับ')),
      ],
    );

    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
