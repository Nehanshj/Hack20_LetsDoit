import 'package:flutter/material.dart';
import 'package:hack20flutter/components/env_tasks/env_tasklist.dart';
import 'package:hack20flutter/components/env_tasks/environmental_tasks.dart';

class Environmental extends StatefulWidget {
  @override
  _EnvironmentalState createState() => _EnvironmentalState();
}

class _EnvironmentalState extends State<Environmental> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              context: context,
              builder: (context) => SingleChildScrollView(
                child: Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: EnvironmentalTask(),
          )),
          isScrollControlled: true,
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green[900],
      ),
      body: EnvTaskList(),
      );
  }
}
