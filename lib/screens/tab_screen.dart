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
            Tab(text: 'Important and urgent',),
            Tab(icon: Icon(Icons.directions_transit),),
            Tab(icon: Icon(Icons.directions_bike),),
            Tab(icon: Icon(Icons.directions_car),), 
          ],),
        ),
      body: TabBarView(children: <Widget>[
        TasksW(),
        TasksW(),
        TasksW(),
        TasksW(), 
      ],),
      ),
    );
  }
}