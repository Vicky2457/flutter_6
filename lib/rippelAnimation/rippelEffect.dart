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

class _MyHomeState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _animationController;

  var listRadius = [100.0, 150.0, 200.0, 250.0, 300.0];

  @override
  void initState() {
    super.initState();
    //_animation = Tween(begin: 0.0, end: 2.0).animate(_animationController);

    _animationController = AnimationController(
        vsync: this, duration: Duration(seconds: 5), lowerBound: 0.4);

    _animationController.addListener(() {});
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Tween',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
          backgroundColor: const Color.fromARGB(255, 31, 105, 233),
        ),
        body: Center(
            child: Stack(alignment: Alignment.center, children: [
          buildMyContainer(listRadius[0]),
          buildMyContainer(listRadius[1]),
          buildMyContainer(listRadius[2]),
          buildMyContainer(listRadius[3]),
          buildMyContainer(listRadius[4]),
          Icon(Icons.add_call)
        ])));
  }

  Widget buildMyContainer(radius) {
    return Container(
      width: radius * _animationController.value,
      height: radius * _animationController.value,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue.withOpacity(1.0 - _animationController.value)),
    );
  }
}
