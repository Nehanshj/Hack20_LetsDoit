import 'package:flutter/material.dart';
import 'package:hack20flutter/components/per_tasks/per_taskdata.dart';
import 'package:provider/provider.dart';

class PersonalTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String pNewTile;

    return Container(
      color: Color(0xff757575),
      child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ListTile(
                title: Text('Read a Book',
                    style: TextStyle(color: Colors.white)),
                trailing: FlatButton(
                  color: Colors.tealAccent,
                  child: Text('Add',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onPressed: (){
                    Provider.of<PerTaskData>(context, listen: false).addTask(pNewTile);
                    Navigator.pop(context);
                  },
                ),
              ),
              ListTile(
                title: Text('Learn Something New',
                    style: TextStyle(color: Colors.white)),
                trailing: FlatButton(
                  color: Colors.tealAccent,
                  child: Text('Add',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onPressed: (){
                    Provider.of<PerTaskData>(context, listen: false).addTask(pNewTile);
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