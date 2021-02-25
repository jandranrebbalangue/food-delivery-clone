import 'package:flutter/material.dart';
import 'package:food_delivery/screens/loginscreen.dart';
import 'package:food_delivery/screens/menuscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {'/menu': (context) => MenuScreen()},
      debugShowCheckedModeBanner: false,
    );
  }
}
