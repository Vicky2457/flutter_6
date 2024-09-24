import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      home: const DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});
  @override
  State<DashBoardScreen> createState() => _DashBoardScreen();
}

class _DashBoardScreen extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          backgroundColor: Colors.orange,
        ),
        body: const Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle_rounded,
              size: 50,
              color: Colors.amberAccent,
            ),
            SizedBox(
              width: 21,
            ),
            Icon(
              Icons.ac_unit,
              size: 50,
            ),
            SizedBox(
              width: 21,
            ),
            FaIcon(
              FontAwesomeIcons.amazon,
              size: 50,
            ),
            SizedBox(
              width: 21,
            ),
            FaIcon(
              FontAwesomeIcons.safari,
              size: 50,
            ),
            SizedBox(
              width: 21,
            ),
            FaIcon(
              FontAwesomeIcons.chrome,
              size: 50,
            ),
            SizedBox(
              width: 21,
            ),
            FaIcon(
              FontAwesomeIcons.windows,
              size: 50,
            ),
            SizedBox(
              width: 21,
            ),
            FaIcon(
              FontAwesomeIcons.laptop,
              size: 50,
            ),
          ],
        )));
  }
}
