import 'package:flutter/material.dart';
import 'package:rio7phonebook/boss/boss2.dart';
import 'package:rio7phonebook/boss/director_screen.dart';
import 'package:rio7phonebook/engineer/main_engineer.dart';
import 'package:rio7phonebook/machine/main_machine.dart';
import 'package:rio7phonebook/manage/main_manage.dart';
import 'package:rio7phonebook/plan/main_plan.dart';
import 'package:rio7phonebook/project/main_amnat.dart';
import 'package:rio7phonebook/project/main_cheelang.dart';
import 'package:rio7phonebook/project/main_construct.dart';
import 'package:rio7phonebook/project/main_domnoi.dart';
import 'package:rio7phonebook/project/main_muk.dart';
import 'package:rio7phonebook/project/main_nakronpanom.dart';
import 'package:rio7phonebook/project/main_namkam.dart';
import 'package:rio7phonebook/project/main_ubon.dart';
import 'package:rio7phonebook/project/main_yaso.dart';
import 'package:rio7phonebook/water/main_water.dart';

class PhoneMain extends StatefulWidget {
  @override
  _PhoneMainState createState() => _PhoneMainState();
}

class _PhoneMainState extends State<PhoneMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.contacts),
          title: Text('รายชื่อสมุดโทรศัพท์'),
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
                      color: Colors.blue[50],
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => BigBoss()));
                      },
                      textColor: Colors.white,
                      padding: EdgeInsets.all(0.0),
                      child: Container(
                        decoration: BoxDecoration(
//                          borderRadius: BorderRadius.circular(20.0),
                          gradient: LinearGradient(colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ]),
                        ),
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            'ผู้อำนวยการสำนักงานชลประทานที่ 7',
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
                            MaterialPageRoute(builder: (context) => SubBoss()));
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
                            'รองผู้อำนวยการสำนักงานชลประทานที่ 7',
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
                                builder: (context) => MainManage()));
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
                            'ฝ่ายบริหารทั่วไป',
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
                                builder: (context) => MainPlan()));
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
                            'ส่วนแผนงาน',
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
                                builder: (context) => MainEngineer()));
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
                            'ส่วนวิศวกรรม',
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
                                builder: (context) => MainWater()));
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
                            'ส่วนบริหารจัดการน้ำและบำรุงรักษา',
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
                                builder: (context) => MainMachine()));
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
                            'ส่วนเครื่องจักรกล',
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
                                builder: (context) => MainUbon()));
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
                            'โครงการชลประทานอุบลราชธานี',
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
                                builder: (context) => MainAmnat()));
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
                            'โครงการชลประทานอำนาจเจริญ',
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
                                builder: (context) => MainYaso()));
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
                            'โครงการชลประทานยโสธร',
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
                            MaterialPageRoute(builder: (context) => MainMuk()));
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
                            'โครงการชลประทานมุกดาหาร',
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
                                builder: (context) => MainNakronpanom()));
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
                            'โครงการชลประทานนครพนม',
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
                                builder: (context) => MainDomnoi()));
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
                            'โครงการส่งนำ้และบำรุงรักษาโดมน้อย',
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
                                builder: (context) => MainNamkam()));
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
                            'โครงการส่งนำ้และบำรุงรักษาพัฒนาลุ่มน้ำก่ำ',
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
                                builder: (context) => MainCheelang()));
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
                            'โครงการส่งนำ้และบำรุงรักษาพัฒนาลุ่มน้ำชีตอนล่างและเซบายตอนล่าง',
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
                  padding: const EdgeInsets.only(
                      top: 10.0, right: 10.0, left: 10.0, bottom: 40.0),
                  child: Center(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainConstruct()));
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
                            'โครงการก่อสร้าง',
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
        ));
  }
}
