import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';

class NetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("网络请求"),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: _getWeather,
          child: Text("获取天气数据"),
        ),
      ),
    );
  }

  void _getWeather() async {
    String url = "http://c.m.163.com/nc/article/headline/T1348647853363/0-40.html";

    HttpClient httpClient = new HttpClient();


    HttpClientRequest request = await httpClient.getUrl(Uri.parse(url));

    HttpClientResponse response =await request.close();

    var result=await response.transform(utf8.decoder).join();

    print(result);
  }
}
