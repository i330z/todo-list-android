import 'package:flutter/material.dart';
import 'package:todoy/widgets/task_tile.dart';
import 'package:todoy/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
      return ListView.builder(
        itemBuilder: (context, index){
        return TasksTile(taskTitle: taskData.tasks[index].name,isChecked: taskData.tasks[index].isDone,checkboxCallback:(checkboxState){
          taskData.updateTask(taskData.tasks[index]);
        },
        longPressCallback: (){
            taskData.deleteTask(taskData.tasks[index]);
        },
        );
      },itemCount: taskData.taskCount,
      );
      }
    );
  }
}