import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[50],
      child: Center(
        child: SpinKitFadingCube(
          color: Color(0xFF6dbf43),
          size: 50.0,
        ),
      ),
    );
  }
}
