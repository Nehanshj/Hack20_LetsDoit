import 'package:flutter/material.dart';
import 'package:hack20flutter/components/task_tile.dart';
import 'package:provider/provider.dart';
import 'per_taskdata.dart';

class PerTaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PerTaskData>(
        builder: (context, pTaskData, child){
          return ListView.builder(
            itemBuilder: (context, index){
              final pTask = pTaskData.pTasks[index];
              return TaskTile(
                title: pTask.name,
                check: pTask.isDone,
                callback: (newValue) {
                  pTaskData.updateTask(pTask);
                },
                longpresscallback: (){
                  pTaskData.delete(pTask);
                },
              );
            },
            itemCount: pTaskData.pTaskCount,
          );
        }
    );
  }
}