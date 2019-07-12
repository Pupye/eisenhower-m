import 'package:flutter/material.dart';

import '../widgets/task_overview_widget.dart';

class TasksOverViewW extends StatelessWidget {
  const TasksOverViewW({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
            child: Column(children: [
          Row(
            children: <Widget>[
              Container(
                width: constraints.maxWidth * 0.5,
                height: constraints.maxHeight * 0.5,
                child: TaskOverViewW(title: 'Important Urgent', type: 0,)
              ),
              Container(
                width: constraints.maxWidth * 0.5,
                height: constraints.maxHeight * 0.5,
                child: TaskOverViewW(title: 'Important not Urgent', type: 1)
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: constraints.maxWidth * 0.5,
                height: constraints.maxHeight * 0.5,
                child: TaskOverViewW(title: 'Urgent not Important', type: 2)
              ),
              Container(
                width: constraints.maxWidth * 0.5,
                height: constraints.maxHeight * 0.5,
                child: TaskOverViewW(title: 'not Urgent not Important',type: 3)
              ),
            ],
          ),
        ]));
      },
    );
  }
}
