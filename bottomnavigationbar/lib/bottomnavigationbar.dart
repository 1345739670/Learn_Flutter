import 'package:flutter/material.dart';

class BootomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BootomNavigation> {
  final _bottomnavigationColor = Colors.blue;
  int _currendIndex = 0;

  _getTitle(index) {
    _formatchTitle(String title) {
      return new Text(title);
    }

    switch (index) {
      case 0:
        return _formatchTitle('Home');
        break;
      case 1:
        return _formatchTitle('Email');
      case 2:
        return _formatchTitle('Pages');
      case 3:
        return _formatchTitle('Airplay');
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: _getTitle(_currendIndex),
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
          if (_currendIndex == index) return;
          setState(() {
            _currendIndex = index;
          });
        },
        // type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
