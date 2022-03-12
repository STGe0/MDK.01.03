import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('PADDING'),
          ),
          body: Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  color: Color.fromARGB(255, 17, 107, 180),
                  width: 450,
                  height: 940,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 15, 0, 0),
                        child: Text(
                          'Miami, US',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 15, 0, 0),
                        child: Text(
                          '27 °С',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Image.asset('assets/images/2.png'),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 15, 0, 0),
                        child: Text(
                          'Tuesday',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 15, 0, 0),
                        child: Text(
                          'CLOUDS',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(80, 300, 0, 0),
                            child: FloatingActionButton(
                              child: Icon(
                                Icons.apps,
                              ),
                              onPressed: () {
                                print('You taped on');
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(80, 300, 0, 0),
                            child: FloatingActionButton(
                              child: Icon(
                                Icons.menu,
                              ),
                              onPressed: () {
                                print('You taped on');
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(80, 300, 0, 0),
                            child: FloatingActionButton(
                              child: Icon(
                                Icons.cached,
                              ),
                              onPressed: () {
                                print('You taped on');
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.white,
                  width: 450,
                  height: 940,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(40),
                        child: Text(
                          'Miami, US',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
