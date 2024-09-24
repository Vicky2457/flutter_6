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
        body: Center(
          child: RichText(
              text: const TextSpan(
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  children: <TextSpan>[
                TextSpan(
                  text: ' hello ',
                ),
                TextSpan(
                  text: 'World! ',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                TextSpan(
                  text: ' Welcome to ',
                ),
                TextSpan(
                  text: ' flutter!',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
              ])),
        )

        //Center(
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text(
        //         'Hello  ',
        //         style: TextStyle(
        //             fontSize: 20,
        //             fontWeight: FontWeight.bold,
        //             color: Colors.grey),
        //       ),
        //       Text(' World !',
        //           style: TextStyle(
        //               fontSize: 50,
        //               fontWeight: FontWeight.bold,
        //               color: Colors.blue)),
        //     ],
        //   ),
        //
        );
  }
}
