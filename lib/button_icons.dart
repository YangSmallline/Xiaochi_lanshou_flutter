import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮"),
      ),
      body: MyCountAddWidget(),
    );
  }
}

class MyRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("RaisedButton"),
          onPressed: () => {},
          highlightColor: Colors.amberAccent,
          elevation: 20,
          splashColor: Colors.deepPurple,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        FlatButton(onPressed: () => {}, child: Text("FlatButton")),
        OutlineButton(onPressed: () {}, child: Text("OutLineButton")),
        IconButton(icon: Icon(Icons.access_time), onPressed: () {})
      ],
    );
  }
}

class MyCountAddWidget extends StatefulWidget {
  @override
  _MyCountAddWidgetState createState() => _MyCountAddWidgetState();
}

class _MyCountAddWidgetState extends State<MyCountAddWidget> {
  int one = 0;
  bool checkbox = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("我有$one"),
        RaisedButton(onPressed: _addCount, child: Text("Add")),
        Text(checkbox.toString()),
        Switch(
            value: checkbox,
            onChanged: (value) {
              setState(() {
                checkbox = value;
              });
            }),
        Checkbox(
            value: checkbox,
            onChanged: (value) {
              setState(() {
                checkbox = value;
              });
            })
      ],
    );
  }

  void _addCount() {
    setState(() {
      one++;
    });
  }
}

class IconsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String icons = "";
// accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
// error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
// fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";

    return Text(
      icons,
      style: TextStyle(
          fontFamily: "MaterialIcons", fontSize: 24, color: Colors.green),
    );
  }
}
