import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  AppBarWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
