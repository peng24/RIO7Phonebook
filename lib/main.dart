import 'package:flutter/material.dart';

import 'screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Phonebook Rio7',
      home: HomeScreen(),
      theme: ThemeData(
          fontFamily: 'Prompt',
          primaryColor: Colors.blue,
//          primarySwatch: Colors.blue,
          canvasColor: Colors.blue[50],
          secondaryHeaderColor: Colors.yellow,
          accentColor: Colors.green),
    );
  }
}
