import 'package:flutter/material.dart';
import 'package:hack20flutter/components/task_tile.dart';
import 'package:provider/provider.dart';
import 'sp_taskdata.dart';

class SpTaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SpTaskData>(
        builder: (context, sTaskData, child){
          return ListView.builder(
            itemBuilder: (context, index){
              final sTask = sTaskData.sTasks[index];
              return TaskTile(
                title: sTask.name,
                check: sTask.isDone,
                callback: (newValue) {
                  sTaskData.updateTask(sTask);
                },
                longpresscallback: (){
                  sTaskData.delete(sTask);
                },
              );
            },
            itemCount: sTaskData.sTaskCount,
          );
        }
    );
  }
}