import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/tasks.dart' as m_tasks;
import '../models/task.dart' as m_task;
import './task_widget.dart';

class TasksW extends StatelessWidget {
  final int type;
  const TasksW({Key key, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List tasks = Provider.of<m_tasks.Tasks>(context).getWithType(type);
    return Container(
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(8.0)
        // ),
        child: ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider<m_task.Task>.value(
        value: tasks[i],
        child: TaskW(),
      ),
    ));
  }
}
