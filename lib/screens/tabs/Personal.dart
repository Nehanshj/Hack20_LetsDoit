import 'package:flutter/material.dart';
import 'package:hack20flutter/components/per_tasks/per_tasklist.dart';
import 'package:hack20flutter/components/per_tasks/personal_tasks.dart';

class Personal extends StatefulWidget {
  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
              context: context,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: PersonalTask(),
                  )),
              isScrollControlled: true,
            );
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.teal[900],
        ),
//      body: Column(        //yeh uncomment karne par poori screen pe error hai. Na karne par poori screen blank
////        crossAxisAlignment: CrossAxisAlignment.start,
////        children: <Widget>[
////          Expanded(
////            child: Container(
////              padding: EdgeInsets.symmetric(horizontal: 20.0),
////              decoration: BoxDecoration(
////                  color: Colors.teal[200],
////                  borderRadius: BorderRadius.only(
////                    topLeft: Radius.circular(20.0),
////                    topRight: Radius.circular(20.0),
////                  )),
////              child: PerTaskList(),
////            ),
////          )
////        ],
////      ),
    );
  }
}
