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
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stateful'),
        ),
        body: Container(
          color: Colors.blue.shade100,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no2Controller,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(no1Controller.text.toString());
                              var no2 =
                                  int.parse(no2Controller.text.toString());
                              var sum = no1 + no2;
                              result = "the sum of $no1 and $no2 is $sum";
                              setState(() {});
                            },
                            child: const Text('add')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(no1Controller.text.toString());
                              var no2 =
                                  int.parse(no2Controller.text.toString());
                              var diff = no1 - no2;
                              result = "the diff of $no1 and $no2 is $diff";
                              setState(() {});
                            },
                            child: const Text('Sub')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(no1Controller.text.toString());
                              var no2 =
                                  int.parse(no2Controller.text.toString());
                              var mul = no1 * no2;
                              result = "the mul of $no1 and $no2 is $mul";
                              setState(() {});
                            },
                            child: const Text('mul')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(no1Controller.text.toString());
                              var no2 =
                                  int.parse(no2Controller.text.toString());
                              var div = no1 / no2;
                              result =
                                  "the div of $no1 and $no2 is ${div.toStringAsFixed(2)}";
                              setState(() {});
                            },
                            child: const Text('div')),
                        Padding(
                          padding: const EdgeInsets.all(51),
                          child: Text(
                            result,
                            style: const TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
