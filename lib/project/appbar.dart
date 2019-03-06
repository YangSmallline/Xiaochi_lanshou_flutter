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

  final List<Tab> _myTabs = [
    Tab(
      text: "选项卡1",
      icon: Icon(Icons.account_box),
    ),
    Tab(text: "选项卡2", icon: Icon(Icons.directions_run)),
    Tab(text: "选项卡3", icon: Icon(Icons.airline_seat_legroom_extra))
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
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text("信息")),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), title: Text("通讯录")),
          BottomNavigationBarItem(
              icon: Icon(Icons.fingerprint), title: Text("发现"))
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
      ),
//      body: _widgetOptions.elementAt(_selectedIndex),
      body: TabBarView(
        children: <Widget>[
          Tab(text: "选项卡1",),
          Tab(text: "选项卡2",),
          Tab(text: "选项卡3",)
        ],
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
