import 'package:flutter/foundation.dart';
import 'package:todoy/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{

  List<Task> _tasks =[   //_ before variable makes it a private variable
    Task(name:'buy Milk'),
    Task(name:'clean Room'),
    Task(name:'code the project'),
  ];

  UnmodifiableListView<Task> get tasks{  // to use the private variable outside we have to use a getter to return the data as public, UnmodifiableListView makes it unmodifiable.
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {  //the get fn usually return a value
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}

