import 'package:flutter/material.dart';
import 'package:rio7phonebook/project/1yaso.dart';
import 'package:rio7phonebook/project/2yaso.dart';
import 'package:rio7phonebook/project/3yaso.dart';

class MainYaso extends StatefulWidget {
  @override
  _MainYasoState createState() => _MainYasoState();
}

class _MainYasoState extends State<MainYaso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('โครงการชลประทานจังหวัดยโสธร'),
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
                          MaterialPageRoute(builder: (context) => OneYaso()));
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
                          MaterialPageRoute(builder: (context) => TwoYaso()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ThreeYaso()));
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
