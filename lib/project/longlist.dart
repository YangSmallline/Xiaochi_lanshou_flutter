import 'package:flutter/material.dart';

class LongListWeight extends StatelessWidget {
  final List<String> items;

  LongListWeight({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.phone),
            title: Text("${items[index]}"),
          );
        },
        itemCount: items.length,
      ),
    );
  }
}