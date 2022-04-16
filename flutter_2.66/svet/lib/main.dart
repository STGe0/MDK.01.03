import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Светофор',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Светофор'),
          centerTitle: true,
        ),
        body: MyButtonSample(),
      ),
    );
  }
}

class MyButtonSample extends StatefulWidget {
  const MyButtonSample({Key? key}) : super(key: key);

  @override
  State<MyButtonSample> createState() => _MyButtonSampleState();
}

class _MyButtonSampleState extends State<MyButtonSample> {
  int integ = 0;
  Color cl1 = Colors.red;
  Color cl2 = Colors.black;
  Color cl3 = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 160,
                height: 160,
                decoration: new BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.indigo),
                    left: BorderSide(width: 1.0, color: Colors.indigo),
                    right: BorderSide(width: 1.0, color: Colors.indigo),
                    bottom: BorderSide(width: 1.0, color: Colors.indigo),
                  ),
                  color: cl1,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 160,
                height: 160,
                decoration: new BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.indigo),
                    left: BorderSide(width: 1.0, color: Colors.indigo),
                    right: BorderSide(width: 1.0, color: Colors.indigo),
                    bottom: BorderSide(width: 1.0, color: Colors.indigo),
                  ),
                  color: cl2,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 160,
                height: 160,
                decoration: new BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.indigo),
                    left: BorderSide(width: 1.0, color: Colors.indigo),
                    right: BorderSide(width: 1.0, color: Colors.indigo),
                    bottom: BorderSide(width: 1.0, color: Colors.indigo),
                  ),
                  color: cl3,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 150,
          width: 200,
        ),
        Center(
          child:
              ElevatedButton(onPressed: printElevatedRED, child: Text('PRESS')),
        ),
      ],
    ));
  }

  void printElevatedRED() => setState(() {
        if (integ == 0) {
          cl1 = Colors.black;
          cl2 = Colors.yellow;
          integ = 1;
        } else {
          if (integ == 1) {
            cl2 = Colors.black;
            cl3 = Colors.green;
            integ = 2;
          } else {
            if (integ == 2) {
              cl3 = Colors.black;
              cl1 = Colors.red;
              integ = 0;
            }
          }
        }
      });
}
