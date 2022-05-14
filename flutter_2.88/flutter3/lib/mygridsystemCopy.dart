import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyGridSystemCopy extends StatefulWidget {
   MyGridSystemCopy({Key? key}) : super(key: key);
  @override
  _MyGridSystemCopy createState() => _MyGridSystemCopy();
}

class _MyGridSystemCopy extends State<MyGridSystemCopy> {
  List myListInt = <int>[];

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
            child: Text(myProd[index]['name']),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(15),
            ),
          );
        },
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
