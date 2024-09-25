import 'dart:async';

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
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHomePage> {
  bool isFirst = true;

  @override
  void initState() {
    // TODO: implement initState
    // Timer(Duration(seconds: 2), () {
    //   reload();
    // });
    super.initState();
  }

  void reload() {
    setState(() {
      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Animated',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
          backgroundColor: const Color.fromARGB(255, 31, 105, 233),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
                firstChild: Center(
                  child: Container(
                    width: 300,
                    height: 250,
                    color: Colors.grey,
                  ),
                ),
                secondChild: Center(
                  child: Image.asset('assets/images/flower.jpeg',
                      height: 200, width: 200),
                ),
                firstCurve: Curves.easeInOut,
                sizeCurve: Curves.bounceInOut,
                crossFadeState: isFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 2)),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  reload();
                },
                child: Text('show'))
          ],
        ));
  }
}
