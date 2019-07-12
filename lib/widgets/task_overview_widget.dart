import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/task_items_overview.dart';
import '../models/tasks.dart' as m_tasks;
import '../models/task.dart' as m_task;

class TaskOverViewW extends StatelessWidget {
  final String title;
  final int type;
  const TaskOverViewW({Key key, this.title, this.type = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tasks = Provider.of<m_tasks.Tasks>(context).getWithType(type);
    return LayoutBuilder(
        builder: (context, constraints) => Container(
              child: Column(
                children: <Widget>[
                  Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 2.5),
                            width: constraints.maxWidth * 0.8,
                            height: constraints.maxHeight * 0.1,
                            child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  title,
                                  maxLines: 2,
                                ))),
                      ],
                    ),
                  ),
                  ..._getTasks(tasks, constraints.maxHeight * 0.9),
                ],
              ),
            ));
  }

  List<Widget> _getTasks(List<m_task.Task> tasks, double height) {
    List<Widget> widgets = [];

    int counter = 0;
    tasks.forEach((task) {
      if (!task.isFinished && counter < 5) {
        widgets.add(ChangeNotifierProvider.value(
          value: task,
          child: TaskItemsOverviewW(height: height),
        ));
      counter++;
      }
    });

    return widgets;
  }
}
