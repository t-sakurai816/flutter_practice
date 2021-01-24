import 'package:flutter/material.dart';
import 'header.dart';
import 'footer/footer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutterの練習', //アプリの名前
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: Scaffold(
        appBar: Header(), //header.dartを実行
        body: Container(),
        bottomNavigationBar: RootWidget(), //footer.dartを実行
      ),
    );
  }
}
