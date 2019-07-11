import 'package:flutter/foundation.dart';

class Task with ChangeNotifier{
  final int id;
  final String title;
  bool isFinished;
  final int type; 

  Task({this.id, this.title, this.isFinished, this.type = 0}); 

  void toggleStatus(){
    isFinished = !isFinished; 
    notifyListeners(); 
  }
}

