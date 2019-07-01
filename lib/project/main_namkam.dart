import 'package:flutter/material.dart';
import 'package:rio7phonebook/project/1namkam.dart';

import 'package:rio7phonebook/project/3namkam.dart';

class MainNamkam extends StatefulWidget {
  @override
  _MainNamkamState createState() => _MainNamkamState();
}

class _MainNamkamState extends State<MainNamkam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('โครงการส่งนำ้และบำรุงรักษาพัฒนาลุ่มน้ำก่ำ'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                child: Center(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OneNamkam()));
                    },
                    textColor: Colors.white,
                    padding: EdgeInsets.all(0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ]),
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          'ข้าราชการ',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      width: double.infinity,
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                child: Center(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThreeNamkam()));
                    },
                    textColor: Colors.white,
                    padding: EdgeInsets.all(0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ]),
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          'พนักงานราชการ',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      width: double.infinity,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
