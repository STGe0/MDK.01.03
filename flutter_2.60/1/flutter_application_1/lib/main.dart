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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final int index = i ~/ 2;

        if (index >= _array.length) {
          _array.addAll(['$index', '${index + 1}', '${index + 2}']);
        }

        return ListTile(title: Text(_array[index]));
      },
    );
  }
}
