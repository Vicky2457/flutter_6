import 'package:flutter/material.dart';
import 'package:project_6/api/sign_up.dart/signup.dart';

void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange,
          textTheme: const TextTheme(
              displayLarge:
                  TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              titleSmall:
                  TextStyle(fontSize: 31, fontWeight: FontWeight.bold))),
      home: const SignupScreen(),
    );
  }
}
