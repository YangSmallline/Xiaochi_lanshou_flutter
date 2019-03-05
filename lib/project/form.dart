import 'package:flutter/material.dart';

class LoginPager extends StatefulWidget {
  @override
  _LoginPagerState createState() => _LoginPagerState();
}

class _LoginPagerState extends State<LoginPager> {

  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();

  String username;

  String password;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: loginKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  labelText: "请输入用户名"
              ),
              onSaved: (value) {
                username = value;
              },
              onFieldSubmitted: (value) {

              },
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "请输入密码"
              ),
              onSaved: (value) {
                password = value;
              },
              validator: (value) {
                return value.length < 6 ? "密码长度不够6位" : null;
              },
            ),
            SizedBox(
              width: 340,
              height: 42,
              child: RaisedButton(onPressed: login, child: Text("登录"),),
            )
          ],

        ),
      ),

    );
  }

  void login() {
    var loginForm = loginKey.currentState;

    if (loginForm.validate()) {
      loginForm.save();
      print("username:" + username + "--password:" + password);
    }
  }
}
