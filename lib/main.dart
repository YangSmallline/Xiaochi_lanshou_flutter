import 'package:flutter/material.dart';
import 'pub_pack.dart';
import 'project/web_url.dart';
import 'project/net.dart';
import 'project/container.dart';
import 'project/longlist.dart';
import 'project/form.dart';
import 'project/appbar.dart';
import 'project/tabbar.dart';
void main() => runApp(TabBarSample());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "home_page":(context)=>Home(),
        "second_page":(context)=>SecondPage(),
        "list_page":(context)=>ListPage(),
        "english":(context)=>RandomWordsWidget(),
      },
      home:  MyAppBar()

//        body: LongListWeight(items: new List<String>.generate(100, (i)=>"items $i")),

    );
  }
}

class Home extends StatelessWidget {
  var title;

  Home({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListPage(
                          items: List<String>.generate(30, (i) => "item $i"))));
            },
            child: Icon(
              Icons.access_alarms,
              color: Colors.redAccent,
            ),
          ),
          FlatButton(onPressed: (){
            Navigator.pushNamed(context, "second_page");
          }, child: Text("跳转到second页面"))
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二个页面"),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: () {
            _back(context);
//            Navigator.pop(context);
          },
        ),
      ),
    );
    ;
  }

  void _back(BuildContext context) {
    Navigator.pop(context);
  }
}

//开启一个页面必须使用手脚架
class ListPage extends StatelessWidget {
  final List<String> items;

  ListPage({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list页面"),
      ),
      body: Container(
          child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
        itemCount: items.length,
      )),
    );
  }
}

//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//  final String title;
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
////
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}
