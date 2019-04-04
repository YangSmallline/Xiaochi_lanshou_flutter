import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(context, new MaterialPageRoute(builder: (_) {
                return new SecondPage();
              }));
            },
            child: Hero(
              tag: "第一张",
              child: Image.network(
                'http://img.zcool.cn/community/0199bc58511b83a8012060c87965f2.png@900w_1l_2o_100sh.jpg',
                width: 300,
                height: 300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Hero(
          tag: "第一张",
          child: Image.network(
            'http://img.zcool.cn/community/0199bc58511b83a8012060c87965f2.png@900w_1l_2o_100sh.jpg',
            width: 100,
            height: 100,
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
