import 'package:flutter/material.dart';

class ImageWidght extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "不是",
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("我是标题"),
        ),
        body: Column(
          children: <Widget>[
            Image1(),
          ],
        ),
      ),
    );
  }
}

class Image1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage("assets/images/one.jpg"),
            height: 200,
          ),
          Image(
            image: AssetImage("assets/images/two.jpg"),
            height: 200,
          ),
          Image(
            image: NetworkImage(
              "http://img.zcool.cn/community/014565554b3814000001bf7232251d.jpg@1280w_1l_2o_100sh.png",
            ),
            height: 200,
          ),
          Image.network("http://img.zcool.cn/community/014565554b3814000001bf7232251d.jpg@1280w_1l_2o_100sh.png")
        ],
      ),
    );
  }
}
