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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHomePage> {
  var weightController = TextEditingController();
  var feetController = TextEditingController();
  var inchController = TextEditingController();
  var result = "";
  var bgcolor = Colors.indigo.shade100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'BMI',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
          backgroundColor: const Color.fromARGB(255, 31, 105, 233),
        ),
        body: Container(
          color: bgcolor,
          child: Center(
            child: Container(
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'BMI',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  TextField(
                    controller: weightController,
                    decoration: InputDecoration(
                      label: Text('Enter your Weight in kg'),
                      prefixIcon: Icon(Icons.line_weight),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  TextField(
                    controller: feetController,
                    decoration: InputDecoration(
                      label: Text('Enter your hight in feet'),
                      prefixIcon: Icon(Icons.height),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  TextField(
                    controller: inchController,
                    decoration: InputDecoration(
                      label: Text('Enter  hight in inch'),
                      prefixIcon: Icon(Icons.height),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        var wt = weightController.text.toString();
                        var ft = feetController.text.toString();
                        var inch = inchController.text.toString();

                        if (wt != "" && ft != "" && inch != "") {
                          var iwt = int.parse(wt);
                          var ift = int.parse(ft);
                          var incht = int.parse(inch);

                          var tinch = (ift * 12) + incht;
                          var tcm = tinch * 2.54;
                          var tm = tcm / 100;
                          var bmi = iwt / (tm * tm);
                          var msg = "";
                          if (bmi > 25) {
                            msg = "You Over Weight";
                            bgcolor = Colors.red.shade100;
                          } else if (bmi < 18) {
                            msg = "you are underweight";
                            bgcolor = Colors.blue.shade100;
                          } else {
                            msg = "You Are healthy";
                            bgcolor = Colors.green.shade100;
                          }

                          setState(() {
                            result =
                                "$msg \n Your BMI is: ${bmi.toStringAsFixed(4)}";
                          });
                        } else {
                          setState(() {
                            result = "please enter values";
                          });
                        }
                      },
                      child: Text('calculate')),
                  Text(
                    result,
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
