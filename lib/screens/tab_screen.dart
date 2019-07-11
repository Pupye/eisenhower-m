import 'package:flutter/material.dart';

import '../widgets/tasks_widget.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('Your Tasks'),
          bottom: TabBar(tabs: <Widget>[
            Tab(icon: Icon(Icons.flash_on),),
            Tab(icon: Icon(Icons.lightbulb_outline),),
            Tab(icon: Icon(Icons.av_timer),),
            Tab(icon: Icon(Icons.cancel),), 
          ],),
        ),
      body: TabBarView(children: <Widget>[
        TasksW(type: 0),
        TasksW(type: 1),
        TasksW(type: 2),
        TasksW(type: 3), 
      ],),
      ),
    );
  }
}