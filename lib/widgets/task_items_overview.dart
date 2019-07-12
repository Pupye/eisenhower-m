import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task.dart' as m_task;

class TaskItemsOverviewW extends StatelessWidget {
  final double height;
  const TaskItemsOverviewW({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final task = Provider.of<m_task.Task>(context);
    return LayoutBuilder(
        builder: (context, constraints) => Container(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                height: height * 0.15,
                width: constraints.maxWidth,
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.scaleDown,
                  child: Text(task.title,
                      style: TextStyle(
                          decoration: task.isFinished
                              ? TextDecoration.lineThrough
                              : TextDecoration.none)),
                ),
              ),
            ));
  }
}
