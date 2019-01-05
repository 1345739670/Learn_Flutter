import 'package:flutter/material.dart';

typedef OnTapCallback = void Function(int);

class BottomNavigationBarWidget extends StatefulWidget {
  BottomNavigationBarWidget({Key key, @required this.onTapCallback}) : super (key: key);
  final OnTapCallback onTapCallback;

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.check_box), title: Text('Todo')),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), title: Text('Calendar')),
        BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm), title: Text('Pomodoro')),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), title: Text('Settings')),
      ],
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        if (this._currentIndex == index) return;
        setState(() {
          _currentIndex = index;
        });
        widget.onTapCallback(index);
      },
    );
  }
}
