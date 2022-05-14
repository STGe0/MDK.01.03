import 'package:flutter/material.dart';
import 'package:flutter3/mygridsystem.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyApp createState() => _MyApp();
}
class _MyApp extends State<MyApp>{

  List myListInt = <int>[];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3 Задание',
      home: Scaffold(
        appBar: AppBar(
          title: Text('3 Задание'),
          centerTitle: true,
        ),
        body: MyGridSystem(),
      ),
    );
  }

  void checkNumbers() => setState(() {
        var intval = Random().nextInt(50) + 1;
        myListInt.add(intval);
        for (var i = 1; i < 50; i++) {
          bool bl = true;
          do {
            bool check = false;
            intval = Random().nextInt(50) + 1;
            for (var j = 0; j < i; j++) {
              if (myListInt[j] == intval) {
                check = true;
              }
            }
            if (check) {
            } else {
              myListInt.add(intval);
              bl = false;
            }
          } while (bl);
        }
      });
}
