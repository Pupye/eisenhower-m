import 'package:flutter/foundation.dart';

import './task.dart';

class Tasks with ChangeNotifier{
  List<Task> _taskItems = [
    Task(
      id: 0, 
      title: 'start meditation',
      isFinished: false,  
      type: 0
    ),
    
    Task(
      id: 1, 
      title: 'buy cooking inventory',
      isFinished: false,
      type: 1  
    ),

    Task(
      id: 2, 
      title: 'exercise',
      isFinished: false,  
      type: 1 
    ),

    Task(
      id: 3, 
      title: 'be grateful',
      isFinished: false,  
      type: 1
    ),

    Task(
      id: 4, 
      title: 'play video game',
      isFinished: false,  
      type: 3
    ),

    Task(
      id: 2, 
      title: 'write an email',
      isFinished: false,  
      type: 2
    ),
  ]; 

  List<Task> get tasks{
    return[... _taskItems]; 
  }

  List<Task> getWithType(int type){
    return _taskItems.where((task)=> task.type == type).toList();
  }

  void addTask(Task t){
    _taskItems.add(t); 
    notifyListeners();
  }

  void removeTask(int id){
    _taskItems.removeWhere((task)=> task.id == id);
    notifyListeners(); 
  }
}