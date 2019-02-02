import 'package:car_meets/event_list.dart';
import 'package:flutter/material.dart';

import './placeholder.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    EventList(),
    PlaceHolder(Colors.lightBlueAccent),
    PlaceHolder(Colors.redAccent)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      body: _children[_currentIndex],
      bottomNavigationBar:
          BottomNavigationBar(currentIndex: _currentIndex, onTap: onTabTapped, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home), title: Text("Events Page")),
        BottomNavigationBarItem(
            icon: Icon(Icons.book), title: Text("Saved Events")),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), title: Text("Settings"))
      ]),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text("Car Meets"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
