import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view_model.dart';

void main() {
  UserInfo userInfo = UserInfo(age: 18, account: "0001", nickName: "死亡骑士");

  runApp(MultiProvider(child: MyApp(), providers: [
    Provider(
      create: (_) => CounterViewModel(),
    ),
    Provider(create: (_) => UserInfoViewModel(userInfo))
  ]));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Col1(),
            Col2(),
          ],
        ),
      ),
    );
  }
}

class Col1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Consumer<CounterViewModel>(
        builder: (context, counterVm, child) => Text(
          "Hello ahah ${counterVm.counter}",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

class Col2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Consumer<CounterViewModel>(
        builder: (context, counterVm, child) => Text(
          "Hello ahah222 ${counterVm.counter}",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
