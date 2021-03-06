import 'package:flutter/material.dart';
import 'package:hack20flutter/badge.dart';
import 'file:///D:/Projects/Flutter/hack20_flutter/lib/screens/dashboard/dashboard.dart';
import 'package:hack20flutter/screens/tabs/Personal.dart';
import 'package:hack20flutter/screens/tabs/Environmental.dart';
import 'package:hack20flutter/screens/tabs/Special.dart';

class Home extends StatelessWidget {
  int selectedPage;

  Home(this.selectedPage);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: selectedPage,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.dashboard,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              }),
          centerTitle: true,
          title: Text(
            'Let\'s DO-it',
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          actions: <Widget>[
            Hero(
              tag: 'Hero1',
              child: IconButton(
                  icon: Icon(
                    Icons.supervised_user_circle,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Badge()),
                    );
                  }),
            ),
          ],
          bottom: TabBar(tabs: [
            Tab(child: Text('Personal')),
            Tab(child: Text('Environment')),
            Tab(child: Text('Special')),
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
