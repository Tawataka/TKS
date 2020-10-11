import 'package:TKS/Services/auth.dart';
import 'package:flutter/material.dart';
import 'package:TKS/Home/options.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("TKS"),
        backgroundColor: Color(0xFF6dbf43),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Sign Out'),
            onPressed: () async {
              await _auth.signOut();
            },
          )
        ],
      ),
      body: (Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/TKS.jpg',
                  height: 300,
                  width: 300,
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
                      new MaterialPageRoute(
                          builder: (ctxt) => new Optionspage()),
                    );
                  },
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
                      new MaterialPageRoute(
                          builder: (ctxt) => new Optionspage()),
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
