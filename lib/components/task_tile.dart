import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool check;
  final String title;
  final Function callback;
  final Function longpresscallback;

  TaskTile({this.check, this.title, this.callback, this.longpresscallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(decoration: check ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.pinkAccent,
          value: check,
          onChanged: callback),
      onLongPress: longpresscallback,
    );
  }
}