import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage();
  
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  late double _deviceHeight, _deviceWidth;
  
  _HomePageState();
  
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height; 
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Taskly',
          style: TextStyle(fontSize: 25)
        ),
        toolbarHeight: _deviceHeight*0.15,
      ),
      body: _tasksList(),
      floatingActionButton: _addTaskButton(),
    );
  }

  Widget _tasksList() {
    return ListView(
      children: [
        ListTile(
          title: const Text("Do Laundry", style: TextStyle(decoration: TextDecoration.lineThrough)),
          subtitle: Text(DateTime.now().toString()),
          trailing: const Icon(
            Icons.check_box_outlined,
            color: Colors.red,
          )
        ),
      ], // Scrollable, rows and columns aren't
    );
  }

  Widget _addTaskButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
    );
  }
}