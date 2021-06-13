import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medhealth/pages/splash_screen.dart';
import 'package:medhealth/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: greenColor),
      home: SplashScreen(),
    );
  }
}
