import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:e_matrix/models/task.dart' as m_task;

class TaskW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final task = Provider.of<m_task.Task>(context);
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.5),
        child: Card(
      child: ListTile(
        title: Text(task.title, 
        style: TextStyle(decoration: task.isFinished ? TextDecoration.lineThrough : TextDecoration.none),),
        leading: Checkbox(
          value: task.isFinished,
          onChanged: (value) {
            task.toggleStatus(); 
          },
        ),
      ),
    ));
  }
}
