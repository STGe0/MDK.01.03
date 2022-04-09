import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: MyBody(),
          ),
        ),
      ),
    );

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  createState() => MyBodyState();
}

class MyBodyState extends State<MyBody> {
  final List<String> _array = [];
  num value = 0;
  int value2 = 0;
  int val = -1;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final int iy = 1;
        value = pow(2, value2);

        if (iy == 1) {
          value = pow(2, value2);
          value2++;
          val++;
        }
        if(val % 2 == 0) 
        {
          return ListTile(
            title: Text("2^$val=$value",
            style: TextStyle(fontWeight: FontWeight.w700),),
            subtitle: Text("Число 2 перемножается $val раз"),
            );
        }
        else 
        {
          return ListTile(
            title: Text("2^$val=$value",
            style: TextStyle(fontWeight: FontWeight.w700),),
            subtitle: Text("Число 2 перемножается $val раз"),
            );
        }
      },
    );
  }
}
