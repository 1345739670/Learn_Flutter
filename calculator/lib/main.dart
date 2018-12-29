import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'calculator Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      home: new CalculatorPage(),
    );
  }
}

// 定义了一个有状态控件，继承自StatefulWidget
class CalculatorPage extends StatefulWidget {
  @override
  createState() => new _CalculatorState();
}

// 定义一个状态类，继承自状态类 State<CalculatorPage> ，<CalculatorPage> 指明该状态控件是 CalculatorPage 控件的
class _CalculatorState extends State<CalculatorPage> {
  String _initDisplay = '0';
  @override
  Widget build(BuildContext context) {

  }
}