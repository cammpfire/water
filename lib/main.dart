import 'package:flutter/material.dart';
import 'package:water/information.dart';
import 'package:water/sign_up_form.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SignUpForm(),
      ),
    );
  }
}
