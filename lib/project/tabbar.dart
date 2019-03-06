import 'package:flutter/material.dart';

class TabBarSample extends StatelessWidget {
  final List<Tab> myTabs = [
    Tab(
      text: "选项卡一",
    ),
    Tab(
      text: "选项卡二",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TabBarSample",
      home: DefaultTabController(
          length: items.length,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Tab选项卡示例"),
              bottom: TabBar(
                tabs: items.map((ItemView item) {
                  return Tab(
                    text: item.title,
                    icon: Icon(item.iconData),
                  );
                }).toList(),
                isScrollable: true,
              ),
            ),
            body: TabBarView(
                children: items.map((ItemView item) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: SelectedView(
                  item: item,
                ),
              );
            }).toList()),
          )),
    );
  }
}

//选中的视图
class SelectedView extends StatelessWidget {

  SelectedView({Key key, this.item}) : super(key: key);

  final ItemView item;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              item.iconData,
              size: 100,
              color: textStyle.color,
            ),
            Text(
              item.title,
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}

//选项卡的类目
const List<ItemView> items = const <ItemView>[
  const ItemView(title: '自驾', iconData: Icons.directions_car),
  const ItemView(title: '自行车', iconData: Icons.directions_bike),
  const ItemView(title: '轮船', iconData: Icons.directions_boat),
  const ItemView(title: '公交车', iconData: Icons.directions_bus),
  const ItemView(title: '火车', iconData: Icons.directions_railway),
  const ItemView(title: '步行', iconData: Icons.directions_walk),
];

//视图项数据
class ItemView {
  final String title;
  final IconData iconData;

  const ItemView({this.title, this.iconData});
}
