import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Цветной круг',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Цветной круг'),
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
  Color cl = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 160,
            height: 160,
            decoration: new BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Colors.purple),
                left: BorderSide(width: 1.0, color: Colors.purple),
                right: BorderSide(width: 1.0, color: Colors.purple),
                bottom: BorderSide(width: 1.0, color: Colors.purple),
              ),
              color: cl,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: printElevatedRED,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 0, left: 15, right: 30),
                    child: Icon(Icons.circle_rounded, color: Colors.red),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 0, left: 30, right: 15),
                    child: Text('КРАСНЫЙ'),
                  ),
                ],
              )),
          SizedBox(height: 15),
          ElevatedButton(
              onPressed: printOutlinedYELLOW,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 0, left: 20, right: 30),
                    child: Icon(Icons.circle_rounded, color: Colors.yellow),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 0, left: 30, right: 17),
                    child: Text('ЖЕЛТЫЙ'),
                  ),
                ],
              )),
          SizedBox(height: 15),
          ElevatedButton(
              onPressed: printTextGREEN,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 0, left: 15, right: 30),
                    child: Icon(Icons.circle_rounded, color: Colors.green),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0, bottom: 0, left: 30, right: 15),
                    child: Text('ЗЕЛЕНЫЙ'),
                  ),
                ],
              )),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: printRESET,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 0, bottom: 0, left: 70, right: 70),
              child: Text('RESET'),
            ),
          ),
        ],
      ),
    );
  }

  void printElevatedRED() => setState(() {
        cl = Colors.red;
      });

  void printOutlinedYELLOW() => setState(() {
        cl = Colors.yellow;
      });

  void printTextGREEN() => setState(() {
        cl = Colors.green;
      });

  void printRESET() => setState(() {
        cl = Colors.white;
      });
}
