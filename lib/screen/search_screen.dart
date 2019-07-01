import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchScreen extends StatefulWidget {
  // ExamplePage({ Key key }) : super(key: key);
  @override
  _SearchScreenState createState() => new _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isLoading = true;

  // final formKey = new GlobalKey<FormState>();
  // final key = new GlobalKey<ScaffoldState>();
  final TextEditingController _filter = new TextEditingController();
  final dio = new Dio();
  String _searchText = "";
  List names = new List();
  List filteredNames = new List();
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle =
      Text('ค้นหา', style: TextStyle(fontSize: 20.0, color: Colors.white));

  _SearchScreenState() {
    _filter.addListener(() {
      if (_filter.text.isEmpty) {
        setState(() {
          _searchText = "";
          filteredNames = names;
        });
      } else {
        setState(() {
          _searchText = _filter.text;
        });
      }
    });
  }

  @override
  void initState() {
    this._getNames();

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildBar(context),
      body: Container(
        child: _buildList(),
      ),
      resizeToAvoidBottomPadding: false,
    );
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      centerTitle: true,
      title: FlatButton(onPressed: _searchPressed, child: _appBarTitle),
      leading: new IconButton(
        icon: _searchIcon,
        onPressed: _searchPressed,
      ),
    );
  }

  Widget _buildList() {
    if (!(_searchText.isEmpty)) {
      List tempList = new List();
      for (int i = 0; i < filteredNames.length; i++) {
        if (filteredNames[i]['name']
            .toLowerCase()
            .contains(_searchText.toLowerCase())) {
          tempList.add(filteredNames[i]);
        }
      }
      filteredNames = tempList;
    }
    return Center(
      child: isLoading
          ? CircularProgressIndicator(
              strokeWidth: 5.0,
            )
          : ListView.builder(
              itemCount: names == null ? 0 : filteredNames.length,
              itemBuilder: (BuildContext context, i) {
                return Card(
                  child: Column(
                    children: <Widget>[
                      new ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'http://www.rid7.com/phonebook/api/public/assets/images/${filteredNames[i]['image']}'),
                        ),
                        title: Text(
                          filteredNames[i]['name'],
                          style: TextStyle(fontSize: 20.0),
                        ),
                        subtitle: Text(filteredNames[i]['position']),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new SecondPage(filteredNames[i])));
                        },
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
//              Divider(),
                    ],
                  ),
                );
              },
            ),
    );
  }

  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
            controller: _filter,
            decoration: new InputDecoration(
                prefixIcon: new Icon(Icons.search),
                hintText: 'กรุณากรอกชื่อ...'));
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new FlatButton(
          onPressed: _searchPressed,
          child: Text(
            'ค้นหา',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        );
        filteredNames = names;
        _filter.clear();
      }
    });
  }

  void _getNames() async {
    final response =
        await dio.get('https://www.rid7.com/phonebook/api/public/all/1');
    List tempList = new List();
    for (int i = 0; i < response.data.length; i++) {
      tempList.add(response.data[i]);
    }
    setState(() {
      names = tempList;
      isLoading = false;
//      names.shuffle();
      filteredNames = names;
    });
  }
}

class SecondPage extends StatelessWidget {
  SecondPage(this.data);
  final data;
  @override
  Widget build(BuildContext context) => new Scaffold(
        appBar: new AppBar(title: new Text(data["name"])),
        body: Center(
          child: Card(
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
                            'http://www.rid7.com/phonebook/api/public/assets/images/${data['image']}'),
                        fit: BoxFit.cover,
                        alignment: Alignment(0.0, -1.0)),
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
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
                    'ชื่อ : ${data['name']}',
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  child: Text(
                    'ตำแหน่ง : ${data['position']}',
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.left,
                  ),
                ),
                Divider(),
                Container(
                  child: Text(
                    'สายใน : ${data['int_tel']}',
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.left,
                  ),
                ),
                Divider(),
                Container(
                  child: FlatButton(
                      onPressed: () => launch('tel:${data['tel']}'),
                      child: Text('โทร : ${data['tel']}',
                          style: TextStyle(fontSize: 20.0))),
                ),
                Divider(),
                Container(
                  child: FlatButton(
                      onPressed: () => launch('tel:${data['mobile']}'),
                      child: Text('มือถือ : ${data['mobile']}',
                          style: TextStyle(fontSize: 20.0))),
                ),
                Container(
                  child: FlatButton(
                      onPressed: () => launch('mailto:${data['email']}'),
                      child: Text('E-Mail : ${data['email']}',
                          style: TextStyle(fontSize: 20.0))),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      );
}
