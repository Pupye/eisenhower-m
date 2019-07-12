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
    final tasks =
        Provider.of<m_tasks.Tasks>(context).getNonFinishedWithType(type);

    return LayoutBuilder(
        builder: (context, constraints) => GestureDetector(
              onTap: () {
                print('hello world');
              },
              child: Container(
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
              ),
            ));
  }

  List<Widget> _getTasks(List<m_task.Task> tasks, double height) {
    List<Widget> widgets = [];

    int counter = 0;
    for (int i = 0; i < tasks.length; i++) {
      widgets.add(ChangeNotifierProvider.value(
        value: tasks[i],
        child: TaskItemsOverviewW(height: height),
      ));
      counter++;
      if (counter == 5) {
        break;
      }
    }
    if (widgets.length == 0) {
      widgets.add(
        Expanded(
          child: Center(
            child: Text(
              'tap to add tasks',
              style: TextStyle(color: Colors.black45),
            ),
          ),
        ),
      );
    }
    return widgets;
  }
}
