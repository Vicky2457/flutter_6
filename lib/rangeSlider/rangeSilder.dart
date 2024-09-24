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
        home: MyHomePage());
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
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Stateful',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
          backgroundColor: const Color.fromARGB(255, 31, 105, 233),
        ),
        body: Center(
          child: RangeSlider(
              values: values,
              labels: labels,
              divisions: 10,
              min: 0,
              max: 100,
              activeColor: Colors.orange,
              inactiveColor: Colors.yellow,
              onChanged: (newValue) {
                values = newValue;
                print('${newValue.start},${newValue.end}');
                setState(() {});
              }),
        ));
  }
}
