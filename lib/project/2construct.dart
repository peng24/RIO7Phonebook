import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';

class TwoConstruct extends StatefulWidget {
  @override
  _TwoConstructState createState() => _TwoConstructState();
}

class _TwoConstructState extends State<TwoConstruct> {
  var users;
  bool isLoading = true;

  String endPoint = 'https://www.rid7.com/phonebook/api/public';
  Future<Null> getUsers() async {
    final response = await http.get('$endPoint/construct/2');

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      print(jsonResponse);
      isLoading = false;

      setState(() {
        users = jsonResponse;
      });
    } else {
      print('Connection ERROR!');
    }
  }

  @override
  void initState() {
    super.initState();

    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ลูกจ้างประจำ'),
      ),
      body: Center(
        child: isLoading
            ? CircularProgressIndicator(
                strokeWidth: 5.0,
              )
            : ListView.builder(
                itemBuilder: (context, int index) {
                  return Card(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Color(0xff7c94b6),
                            image: DecorationImage(
                                image: NetworkImage(
                                    '$endPoint/assets/images/${users[index]['image']}'),
                                fit: BoxFit.cover,
                                alignment: Alignment(0.0, -1.0)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100.0)),
                            border: Border.all(
                              color: Colors.red,
                              width: 4.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          child: Text(
                            'ชื่อ : ${users[index]['name']}',
                            style: TextStyle(fontSize: 20.0),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          child: Text(
                            'ตำแหน่ง : ${users[index]['position']}',
                            style: TextStyle(fontSize: 15.0),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Divider(),
                        Container(
                          child: Text(
                            'สายใน : ${users[index]['int_tel']}',
                            style: TextStyle(fontSize: 20.0),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Divider(),
                        Container(
                          child: FlatButton(
                              onPressed: () =>
                                  launch('tel:${users[index]['tel']}'),
                              child: Text('โทร : ${users[index]['tel']}',
                                  style: TextStyle(fontSize: 20.0))),
                        ),
                        Divider(),
                        Container(
                          child: FlatButton(
                              onPressed: () =>
                                  launch('tel:${users[index]['mobile']}'),
                              child: Text('มือถือ : ${users[index]['mobile']}',
                                  style: TextStyle(fontSize: 20.0))),
                        ),
                        Container(
                          child: FlatButton(
                              onPressed: () =>
                                  launch('mailto:${users[index]['email']}'),
                              child: Text('E-Mail : ${users[index]['email']}',
                                  style: TextStyle(fontSize: 20.0))),
                        ),
                        Divider(),
                      ],
                    ),
                  );
                },
                itemCount: users != null ? users.length : 0,
              ),
      ),
    );
  }
}
