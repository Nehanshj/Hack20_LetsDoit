import 'package:flutter/material.dart';
import 'package:hack20flutter/components/task_tile.dart';
import 'package:provider/provider.dart';
import 'env_taskdata.dart';

class EnvTaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<EnvTaskData>(
      builder: (context, eTaskData, child){
        return ListView.builder(
            itemBuilder: (context, index){
              final eTask = eTaskData.eTasks[index];
              return TaskTile(
                title: eTask.name,
                check: eTask.isDone,
                callback: (newValue) {
                  eTaskData.updateTask(eTask);
                },
                longpresscallback: (){
                  eTaskData.delete(eTask);
                },
              );
            },
            itemCount: eTaskData.eTaskCount,
        );
      }
    );
  }
}
