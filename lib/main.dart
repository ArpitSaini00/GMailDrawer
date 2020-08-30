import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GMail UI Copy',
      theme: ThemeData(
        fontFamily: 'Sans',
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Gmail'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 5.0),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.pink[100],
                    width: 1.0,
                  )),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                  child: Text(
                    'Gmail',
                    style: TextStyle(
                      color: Colors.pink[700],
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.only(
                      topRight: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(40.0),
                    ),
                  ),
                  child: ListTile(
                    title: Text(
                      'Primary',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    leading: Icon(
                      Icons.inbox,
                      color: Colors.pink,
                    ),
                    dense: true,
                    trailing: Text(
                      '99+',
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Social',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.people),
                dense: true,
              ),
              ListTile(
                title: Text(
                  'Promotions',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.local_offer),
                trailing: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                    child: Text(
                      '12 new',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
                dense: true,
              ),
              ListTile(
                title: Text(
                  'Updates',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.info_outline),
                trailing: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                    child: Text(
                      '5 new',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
                dense: true,
              ),
              ListTile(
                title: Text(
                  'Forums',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.forum),
                dense: true,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(17.0, 8.0, 0.0, 3.0),
                  child: Text(
                    'ALL LABELS',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Starred',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.star_border),
              ),
              ListTile(
                title: Text(
                  'Snoozed',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.access_time),
                dense: true,
              ),
              ListTile(
                title: Text(
                  'Important',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.label_important),
                dense: true,
              ),
              ListTile(
                title: Text(
                  'Sent',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.send),
                dense: true,
              ),
              ListTile(
                title: Text(
                  'Scheduled',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.timelapse),
                dense: true,
              ),
              ListTile(
                title: Text(
                  'Outbox',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.near_me),
                dense: true,
              ),
              ListTile(
                title: Text(
                  'Drafts',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Icon(Icons.insert_drive_file),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: Text(
                    '4',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                ),
                dense: true,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Center(
                    child: Text(
                      'Pink Accent by ArpitSaini00',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
