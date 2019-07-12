import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/tasks_overview_widget.dart';
import '../models/tasks.dart' as m_tasks;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ChangeNotifierProvider.value(
        child: TasksOverViewW(),
        value: m_tasks.Tasks(),
      ),
    );
  }
}
