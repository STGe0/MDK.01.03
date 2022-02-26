import 'package:flutter/material.dart';

void main() {
  runApp(
    Myapp(),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('Sample Code'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinearProgressIndicator(
                  value: 23,
                ),
                SizedBox(
                  height: 35,
                ),
                Text('23%',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Press button to download',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
