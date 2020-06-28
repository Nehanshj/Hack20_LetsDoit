import 'package:flutter/material.dart';
import 'package:hack20flutter/screens/dashboard/widgets/horizintalcards.dart';
import 'package:hack20flutter/screens/dashboard/widgets/list.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[400],
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "DASHBOARD",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlueAccent[400],
      ),
      body: ListView(
        children: <Widget>[
          HorizontalCards(),
          Lists(),
        ],
      ),
    );
  }
}
