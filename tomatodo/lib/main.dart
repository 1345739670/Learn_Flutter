import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';

import 'pages/todo_list_screen.dart';
import 'pages/calendar.dart';
import 'pages/pomodoro.dart';
import 'pages/settings.dart';
import 'package:tomatodo/bottom_navigation_bar.dart';
// void main() => runApp(MyApp());

// void main() {
//   SystemChrome.setEnabledSystemUIOverlays([]);
//   runApp(MyApp());
// }
void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tomatodo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  _setSIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  _getPage(_currentIndex) {
    switch (_currentIndex) {
      case 0:
        return TodoListScreen();
      case 1:
        return CalendarScreen();
      case 2:
        return PomodoroScreen();
      case 3:
        return SettingScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarWidget(onTapCallback: _setSIndex),
      body: _getPage(_currentIndex),
    );
  }
}
