import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project_6/Shared_Prefernce/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_page.dart';  // Import the login page

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
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),  // Changed to splash screen
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const String KEYLOGIN = "login";

  @override
  void initState() {
    super.initState();
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Welcome',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 31, 105, 233),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Icon(
            Icons.account_circle,
            color: Colors.white,
            size: 100,
          ),
        ),
      ),
    );
  }

  void whereToGo() async {
    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedin = sharedPref.getBool(KEYLOGIN) ?? false;

    Timer(Duration(seconds: 2), () {
      if (isLoggedin) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),  // Navigate to login page
        );
      }
    });
  }
}
