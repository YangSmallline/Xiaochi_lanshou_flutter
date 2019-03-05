import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class Web_url extends StatelessWidget {
  final url = "https://www.baidu.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("我爱你"),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: _getUrl,
              child: Text("请求网络"),
            ),
            RaisedButton(
              onPressed: _getBody,
              child: Text("请求body"),
            ),
          ],
        ));
  }

  void _getUrl() {
    launch(url);
  }

  void _getBody() {
    var url = "http://c.m.163.com/nc/article/headline/T1348647853363/0-40.html";
    http.get(url).then((response) {
      print("状态:${response.statusCode}");
      print("正文:${response.body}");
    });
  }
}
