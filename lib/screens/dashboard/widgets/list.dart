import 'package:flutter/material.dart';

import '../../home.dart';

class Lists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(top: 17.0, bottom: 10.0, right: 20.0, left: 20.0),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
          ),
          child: ListTile(
            leading: Icon(Icons.show_chart, color: Colors.blue),
            title: Text(
              "PERSONAL TASKS",
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home(0)));
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(top: 10.0, bottom: 10.0, right: 20.0, left: 20.0),
          padding: EdgeInsets.all(10.0),
          width: 0.7 * MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
          ),
          child: ListTile(
            leading: Icon(
              Icons.filter_vintage,
              color: Colors.blue,
            ),
            title: Text("ENVIRONMENTAL TASKS",
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0)),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home(1)));
            },
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(top: 10.0, bottom: 10.0, right: 20.0, left: 20.0),
          padding: EdgeInsets.all(10.0),
          width: 0.7 * MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
          ),
          child: ListTile(
            leading: Icon(
              Icons.face,
              color: Colors.blue,
            ),
            title: Text("SPECIAL TASKS",
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0)),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home(3)));
            },
          ),
        ),
      ],
    );
  }
}
