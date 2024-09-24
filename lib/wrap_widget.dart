import 'package:flutter/material.dart';

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
        body: SizedBox(
          width: double.infinity,
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.spaceEvenly,
            spacing: 11,
            runSpacing: 11,
            children: [
              Container(
                height: 116.3,
                width: 115.3,
                color: const Color.fromARGB(255, 4, 10, 179),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 6, 79, 41),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 216, 165, 11),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 148, 81, 10),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 242, 7, 214),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 6, 79, 41),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 216, 165, 11),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 131, 3, 92),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 212, 7, 7),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 1, 29, 49),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 90, 143, 6),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 131, 3, 92),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 4, 10, 179),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 148, 81, 10),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 6, 79, 41),
              ),
              Container(
                height: 116.3,
                width: 115.3,
                color: const Color.fromARGB(255, 4, 10, 179),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 6, 79, 41),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 131, 3, 92),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 148, 81, 10),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 216, 165, 11),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 131, 3, 92),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 4, 10, 179),
              ),
              Container(
                height: 115.3,
                width: 115.3,
                color: const Color.fromARGB(255, 148, 81, 10),
              ),
            ],
          ),
        ));
  }
}
