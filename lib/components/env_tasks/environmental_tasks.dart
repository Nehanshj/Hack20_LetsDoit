import 'package:flutter/material.dart';
import 'package:hack20flutter/components/env_tasks/env_taskdata.dart';
import 'package:provider/provider.dart';

class EnvironmentalTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String eNewTile;

    return Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
        )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ListTile(
                title: Text(eNewTile='Water Plants',
                style: TextStyle(color: Colors.white)),
                trailing: FlatButton(
                  color: Colors.lightGreen,
                  child: Text('Add',
                  style: TextStyle(
                    color: Colors.white,
                  )),
                  onPressed: (){ // null nai kara coz woh button alag se nai dikhre the, plus isse waise bhi kuch nai hora
                    Provider.of<EnvTaskData>(context, listen: false).addTask(eNewTile);
                    Navigator.pop(context);
                  },
                ),
              ),
              ListTile(
                title: Text(eNewTile='Plant a Tree',
                  style: TextStyle(color: Colors.white)),
                trailing: FlatButton(
                  color: Colors.lightGreen,
                  child: Text('Add',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onPressed: (){
                    Provider.of<EnvTaskData>(context, listen: false).addTask(eNewTile);
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          )
        ),
    );
  }
}
