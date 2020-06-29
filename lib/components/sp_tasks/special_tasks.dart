import 'package:flutter/material.dart';
import 'package:hack20flutter/components/sp_tasks/sp_taskdata.dart';
import 'package:provider/provider.dart';

class SpecialTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String sNewTile;

    return Container(
      color: Color(0xff757575),
      child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: Colors.yellowAccent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ListTile(
                title: Text('Save Electricity',
                    style: TextStyle(color: Colors.black)),
                trailing: FlatButton(
                  color: Colors.yellow[300],
                  child: Text('Add',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  onPressed: (){
                    Provider.of<SpTaskData>(context, listen: false).addTask(sNewTile);
                    Navigator.pop(context);
                  },
                ),
              ),
              ListTile(
                title: Text('Wear a Mask',
                    style: TextStyle(color: Colors.black)),
                trailing: FlatButton(
                  color: Colors.yellow[300],
                  child: Text('Add',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  onPressed: (){
                    Provider.of<SpTaskData>(context, listen: false).addTask(sNewTile);
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