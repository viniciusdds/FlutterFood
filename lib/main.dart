import 'package:flutter/material.dart';

import './routes.dart';
import './contants/app.theme.dart';

void main() => runApp(FlutterFoodApp());

class FlutterFoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterFood',
      theme: themeData,
      initialRoute: '/',
      routes: Routes.routes,
    );
  }
}
