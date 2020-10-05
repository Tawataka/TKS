import 'package:flutter/material.dart';

class Optionspage extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("TKS"),
        backgroundColor: Colors.green,
      ),
      body: (Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Button_1',
                    style: TextStyle(fontSize: 27.0),
                  ),
                  onPressed: () {
                    print('button 1 pressed');
                    Navigator.push(
                      ctxt,
                      new MaterialPageRoute(
                          builder: (ctxt) => new SecondScreen()),
                    );
                  },
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Button_2',
                      style: TextStyle(fontSize: 27.0),
                    ),
                    onPressed: () {
                      print('button 2 pressed');
                      Navigator.push(
                        ctxt,
                        new MaterialPageRoute(
                            builder: (ctxt) => new ThirdScreen()),
                      );
                    },
                  )),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Button_3',
                      style: TextStyle(fontSize: 27.0),
                    ),
                    onPressed: () {
                      print('button 3 pressed');
                      Navigator.push(
                        ctxt,
                        new MaterialPageRoute(
                            builder: (ctxt) => new FourthScreen()),
                      );
                    },
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Button_1',
                    style: TextStyle(fontSize: 27.0),
                  ),
                  onPressed: () {
                    print('button 4 pressed');
                    Navigator.push(
                      ctxt,
                      new MaterialPageRoute(
                          builder: (ctxt) => new FifthScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second page"),
      ),
      body: new Text("Another Page...!!!!!!"),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("thirsd page"),
      ),
      body: new Text("Another Page...!!!!!!"),
    );
  }
}

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("fourth page"),
      ),
      body: new Text("Another Page...!!!!!!"),
    );
  }
}

class FifthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("fifth page"),
      ),
      body: new Text("Another Page...!!!!!!"),
    );
  }
}
