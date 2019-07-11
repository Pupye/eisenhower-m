import 'package:flutter/foundation.dart';

import './task.dart';

class Tasks with ChangeNotifier{
  List<Task> _taskItems = [
    Task(
      id: 0, 
      title: 'start meditation',
      isFinished: false,  
    ),
    
    Task(
      id: 1, 
      title: 'buy cooking inventory',
      isFinished: false,  
    ),

    Task(
      id: 2, 
      title: 'exercise',
      isFinished: false,  
    ),

    Task(
      id: 3, 
      title: 'be grateful',
      isFinished: false,  
    ),
  ]; 

  List<Task> get tasks{
    return[... _taskItems]; 
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