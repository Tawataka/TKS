import 'package:flutter/material.dart';

import 'options.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("TKS"),
        backgroundColor: Color(0xFF6dbf43),
      ),
      body: (Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/TKS.jpg',
                  height: 300,
                  width: 300,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              color: Color(0xFF6dbf43),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                'Options Page',
                style: TextStyle(fontSize: 27.0),
              ),
              onPressed: () {
                print('button 1 pressed');
                Navigator.push(
                  ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new Optionspage()),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
