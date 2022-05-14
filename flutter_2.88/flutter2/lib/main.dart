import 'package:flutter/material.dart';
import 'package:flutter2/mygridsystem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2 Задание',
      home: Scaffold(
        appBar: AppBar(
          title: Text('2 Задание'),
          centerTitle: true,
        ),
        body: MyGridSystem(),
      ),
    );
  }
}
