import 'package:flutter/material.dart';
import 'package:project_6/widgets/rounded-button.dart';

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
          backgroundColor: const Color.fromARGB(255, 14, 78, 215),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: Roundedbutton(
                  btnName: 'play',
                  icon: const Icon(Icons.play_arrow),
                  callback: () {
                    print('Logged in');
                  },
                  textStyle: const TextStyle(fontSize: 30),
                ),
              ),
              Container(
                height: 20,
              ),
              SizedBox(
                width: 150,
                child: Roundedbutton(
                  btnName: 'press',
                  // icon: Icon(Icons.play_arrow),
                  callback: () {
                    print(' playing');
                  },
                  bgcolor: Colors.orange,
                  textStyle: const TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ));
  }
}
