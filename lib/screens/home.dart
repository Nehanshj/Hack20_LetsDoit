import 'package:flutter/material.dart';
import 'package:hack20flutter/screens/tabs/Personal.dart';
import 'package:hack20flutter/screens/tabs/Environmental.dart';
import 'package:hack20flutter/screens/tabs/Special.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.dashboard,
                color: Colors.white,
              ),
              onPressed: null),
          centerTitle: true,
          title: Text(
            'Let\'s DO-it',
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.white,
                ),
                onPressed: null),
          ],
          bottom: TabBar(tabs: [
            Tab(child: Text('Personal')),
            Tab(child: Text('Environment')),
            Tab(
              child: Text('Special'),
            )
          ]),
        ),
        body: TabBarView(children: [
          Personal(),
          Environmental(),
          Special(),
        ]),
      ),
    );
  }
}
