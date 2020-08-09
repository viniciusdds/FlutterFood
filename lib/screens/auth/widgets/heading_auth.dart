import 'package:flutter/material.dart';

class HeadingAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      height: 130,
      width: 130,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/IconeFlutterFood.png'),
              fit: BoxFit.fill
          )
      ),
    );
  }
}
