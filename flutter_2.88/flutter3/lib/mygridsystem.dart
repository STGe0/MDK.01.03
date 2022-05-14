import 'dart:math';
import 'package:flutter3/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyGridSystem extends StatefulWidget {
  const MyGridSystem({Key? key}) : super(key: key);
  @override
  _MyGridSystem createState() => _MyGridSystem();
}

class _MyGridSystem extends State<MyGridSystem> {
  final List<Map> myProd =
      List.generate(50, (index) => {'id': index, 'name': '${index + 1}'});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120,
          childAspectRatio: 5 / 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
        itemCount: 50,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            alignment: Alignment.center,
            child: Text(myListInt[index]),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(15),
            ),
          );
        },
      ),
    );
  }
}
