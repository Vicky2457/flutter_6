
import 'package:flutter/material.dart';
import 'package:project_6/heroAni/detail_page.dart';

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
      body: Container(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DetailPage()));
          },
          child: Hero(
            tag: 'background',
            child: Center(
              child: Image.asset(
                'assets/images/flower.jpeg',
                height: 200,
                width: 200,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
