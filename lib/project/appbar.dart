import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  int _selectedIndex = 1;

  final _widgetOptions = [
    Text("index 0 : 信息"),
    Text("index 1 : 通讯录"),
    Text("index 2 : 发现")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App应用按钮实例"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
            tooltip: "搜索",
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: null,
            tooltip: "添加",
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat),title: Text("信息")),
          BottomNavigationBarItem(icon: Icon(Icons.message),title: Text("通讯录")),
          BottomNavigationBarItem(icon: Icon(Icons.fingerprint),title: Text("发现"))
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex=value;
    });
  }
}
