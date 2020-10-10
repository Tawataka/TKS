import 'package:flutter/material.dart';
import 'package:TKS/Services/auth.dart';
import 'package:TKS/share/constant.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  //text fields
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Sign Up"),
        backgroundColor: Color(0xFF6dbf43),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Sign In'),
            onPressed: () {
              widget.toggleView();
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                  decoration: textInputDecoration,
                  validator: (val) =>
                      val.isEmpty ? 'Enter a valid email address' : null,
                  onChanged: (val) {
                    setState(() => email = val);
                  }),
              SizedBox(height: 20.0),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                  validator: (val) => val.length < 6
                      ? 'Enter a password 6+ characters long'
                      : null,
                  onChanged: (val) {
                    setState(() => password = val);
                  }),
              SizedBox(height: 20.0),
              RaisedButton(
                  color: Color(0xFF6dbf43),
                  child: Text('Register'),
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      dynamic result =
                          await _auth.registerEmailAndPassword(email, password);
                      if (result == null) {
                        setState(() => error = 'Please supply a valid email');
                      }
                    }
                  }),
              SizedBox(height: 15.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 15.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
