import 'package:flutter/material.dart';
import 'appbar.dart';

class BootomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BootomNavigation> {
  final _bottomnavigationColor = Colors.blue;
  int _currendIndex = 0;
  List<Widget> appBarTitleList = List();

  @override
  void initState() {
    appBarTitleList
      ..add(AppBarWidget(title: 'Home',))
      ..add(AppBarWidget(title: 'Email',))
      ..add(AppBarWidget(title: 'Pages',))
      ..add(AppBarWidget(title: 'Airplay',));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: appBarTitleList[_currendIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _bottomnavigationColor,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: _bottomnavigationColor,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: _bottomnavigationColor,
              ),
              title: Text('Email',
                  style: TextStyle(
                    color: _bottomnavigationColor,
                  ))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: _bottomnavigationColor,
              ),
              title: Text('Pages',
                  style: TextStyle(
                    color: _bottomnavigationColor,
                  ))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: _bottomnavigationColor,
              ),
              title: Text('Airplay',
                  style: TextStyle(
                    color: _bottomnavigationColor,
                  ))),
        ],
        currentIndex: _currendIndex,
        onTap: (int index) {
          setState(() {
            _currendIndex = index;
          });
        },
        // type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
