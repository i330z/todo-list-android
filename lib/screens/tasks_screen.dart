import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoy/models/task_data.dart';
import 'package:todoy/widgets/tasks_list.dart';
import 'package:todoy/screens/add_tasks_screen.dart';
//import 'package:todoy/models/task.dart';
import 'package:provider/provider.dart';


class TasksScreen extends StatelessWidget {

//  List<Task> tasks =[
//    Task(name:'buy Milk'),
//    Task(name:'clean Room'),
//    Task(name:'code the project'),
//  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context) => AddTaskScreen()
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add) ,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60.0,left: 30.0,right: 30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    child: Icon(
                        Icons.list,
                        size: 30.0,
                        color: Colors.lightBlueAccent,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30.0
                ),
                SizedBox(height: 10.0),
                Text(
                    'ToDoy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
              ),
              child:TasksList(),
            ),
          )
        ],
      )
    );
  }
}


