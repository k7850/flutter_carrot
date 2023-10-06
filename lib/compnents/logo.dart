import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  double size;
  Logo({this.size = 50});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      child: Image.asset("assets/carrot3.png"),
    );
  }
}
