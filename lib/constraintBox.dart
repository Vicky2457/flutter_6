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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // State<StatefulWidget> createState() =>  MyHomeState();  direct method
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Stateful',
          style: TextStyle(fontSize: 20, color: Colors.white),
        )),
        backgroundColor: const Color.fromARGB(255, 31, 105, 233),
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 200,
          minHeight: 100,
          maxHeight: 100,
          minWidth: 100,
        ),
        child: ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Click',
              style: TextStyle(fontSize: 30),
            )),
        // child: Text(
        //   'Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World  ',
        //   style: TextStyle(fontSize: 30),
        // ),
      ),
    );
  }
}
