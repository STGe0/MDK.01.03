import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text(
            'Счетчик Стешкин Г.В. ИП - 19 - 3'
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Ink(
                  decoration: const ShapeDecoration(
                  color: Colors.red,
                  shape: CircleBorder(),
                  ),
                  child: IconButton(
                  icon: const Icon(Icons.add),
                  color: Colors.white,
                  highlightColor: Colors.yellow,
                  iconSize: 48,
                  onPressed: (){},
                ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
