import 'package:flutter/material.dart';
import 'package:rio7phonebook/project/1amnat.dart';
import 'package:rio7phonebook/project/2amnat.dart';
import 'package:rio7phonebook/project/3amnat.dart';

class MainAmnat extends StatefulWidget {
  @override
  _MainAmnatState createState() => _MainAmnatState();
}

class _MainAmnatState extends State<MainAmnat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('โครงการชลประทานจังหวัดอำนาจเจริญ'),
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
                          MaterialPageRoute(builder: (context) => OneAmnat()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TwoAmnat()));
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
                          'ลูกจ้างประจำ',
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
                              builder: (context) => ThreeAmnat()));
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
