import 'package:flutter/material.dart';

class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('หน้าแรก'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset('assets/images/logo_rid_thai_C.png'),
          ),
          Center(
            child: Text(
              'สำนักงานชลประทานที่ 7',
              style: TextStyle(fontSize: 30.0, color: Colors.blue[900]),
            ),
          )
        ],
      ),
    );
  }
}
