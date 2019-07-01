import 'package:flutter/material.dart';
import 'package:rio7phonebook/project/1ubon.dart';
import 'package:rio7phonebook/project/2ubon.dart';
import 'package:rio7phonebook/project/3ubon.dart';

class MainUbon extends StatefulWidget {
  @override
  _MainUbonState createState() => _MainUbonState();
}

class _MainUbonState extends State<MainUbon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('โครงการชลประทานจังหวัดอุบลราชธานี'),
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
                          MaterialPageRoute(builder: (context) => OneUbon()));
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
                          MaterialPageRoute(builder: (context) => TwoUbon()));
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
                          MaterialPageRoute(builder: (context) => ThreeUbon()));
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
//          Column(
//            children: <Widget>[
//              Card(
//                child: ListTile(
//                  title: Text(
//                    'ข้าราชการ',
////                    style: TextStyle(fontSize: 10.0),
//                  ),
//                  onTap: () {
//                    Navigator.push(context,
//                        MaterialPageRoute(builder: (context) => OneUbon()));
//                  },
//                  trailing: Icon(Icons.arrow_right),
//                ),
//              ),
//              SizedBox(
//                height: 5.0,
//              ),
//              Card(
//                child: ListTile(
//                  title: Text(
//                    'ลูกจ้างประจำ',
////                    style: TextStyle(fontSize: 10.0),
//                  ),
//                  onTap: () {
//                    Navigator.push(context,
//                        MaterialPageRoute(builder: (context) => TwoUbon()));
//                  },
//                  trailing: Icon(Icons.arrow_right),
//                ),
//              ),
//              SizedBox(
//                height: 5.0,
//              ),
//              Card(
//                child: ListTile(
//                  title: Text(
//                    'พนักงานราชการ',
////                    style: TextStyle(fontSize: 10.0),
//                  ),
//                  onTap: () {
//                    Navigator.push(context,
//                        MaterialPageRoute(builder: (context) => ThreeUbon()));
//                  },
//                  trailing: Icon(Icons.arrow_right),
//                ),
//              ),
//            ],
//          )
        ],
      ),
    );
  }
}
