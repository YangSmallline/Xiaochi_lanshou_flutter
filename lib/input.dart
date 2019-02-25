import 'package:flutter/material.dart';

class InputFile extends StatelessWidget {
  TextEditingController _unameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "我是标题",
      home: Scaffold(
        appBar: AppBar(
          title: Text("我是标题"),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              controller: _unameController,
              autofocus: true,
              decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  prefixIcon: Icon(Icons.person)),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  prefixIcon: Icon(Icons.lock)),
              obscureText: true,
            )
          ],
        ),
      ),
    );
  }
}
