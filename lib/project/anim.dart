import 'package:flutter/material.dart';

class MyAnim extends StatefulWidget {
  @override
  _MyAnimState createState() => _MyAnimState();
}

class _MyAnimState extends State<MyAnim> with SingleTickerProviderStateMixin {

  Animation<double> animation;
  AnimationController controller;
  AnimationStatus animationStatus;
  double animationValue;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2,), vsync: this);
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
//        setState(() {
//          animationValue = animation.value;
//        });
//      })
//      ..addStatusListener((AnimationStatus state) {
//        animationStatus = state;
//      })
    ;
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedLogo(animation: animation,)
//      Center(
//        child: Column(
//          children: <Widget>[
//            GestureDetector(
//              onTap: () {
//                controller.reset();
//                controller.forward();
//              },
//
//              child: Text('start', textDirection: TextDirection.ltr,),
//            ),
//            Text('state:' + animationStatus.toString()),
//            Text('value:' + animationValue.toString()),
//            Container(
//              height: animation.value,
//              width: animation.value,
//              child: FlutterLogo(),
//            )
//          ],
//        ),
//      ),
    );
  }
}


class AnimatedLogo extends AnimatedWidget {

  AnimatedLogo({Key key, Animation<double> animation})
      :super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation=listenable;

    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: animation.value,
        width: animation.value,
        child: FlutterLogo(),
      ),
    );;
  }}

