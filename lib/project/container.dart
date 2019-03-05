import 'package:flutter/material.dart';

class Mycontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 400,
        height: 400,
        decoration: BoxDecoration(
            color: Colors.deepPurple[50],
            border: Border.all(color: Colors.grey, width: 8.0),
            borderRadius: const BorderRadius.all(const Radius.circular(8.0))),
        child: RaisedButton(
          onPressed: null,
          child: Text(
            "flutter",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 19,
              color: Colors.indigoAccent,
            ),
          ),
        ));
  }
}
