import 'package:flutter/foundation.dart';

class Task with ChangeNotifier{
  final int id;
  final String title;
  bool isFinished;

  Task({this.id, this.title, this.isFinished}); 

  void toggleStatus(){
    isFinished = !isFinished; 
    notifyListeners(); 
  }
}

