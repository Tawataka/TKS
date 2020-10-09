import 'package:TKS/Services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Sign In"),
        backgroundColor: Color(0xFF6dbf43),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null) {
              print('error signing in');
            } else {
              print('user signed in');
              print(result.uid);
            }
          },
          child: Text(
            'Sign In',
            style: TextStyle(fontSize: 27.0),
          ),
        ),
      ),
    );
  }
}
