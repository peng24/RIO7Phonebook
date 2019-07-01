import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.info),
        title: Text('เกี่ยวกับเรา'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset('assets/images/logo_rid_thai_C.png'),
                Text(
                  'สำนักงานชลประทานที่ 7',
                  style: TextStyle(fontSize: 30.0, color: Colors.blue[900]),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text('จัดทำโดย: งานประชาสัมพันธ์และสารสนเทศ สชป.7')
              ],
            )
          ],
        ),
      ),
    );
  }
}
