import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyGridSystem extends StatelessWidget {
  MyGridSystem({Key? key}) : super(key: key);

  final List<Map> myProd = List.generate(
      100, (index) => {'id': index, 'name': '${Random().nextInt(100) + 1}'});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120,
          childAspectRatio: 2 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
        itemCount: 50,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            alignment: Alignment.center,
            child: Text(myProd[index]['name']),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(60),
            ),
          );
        },
      ),
    );
  }
}
