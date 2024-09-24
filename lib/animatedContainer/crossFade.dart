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
  var _height = 200.0;
  var _width = 200.0;
  var _color = Colors.blue.shade900;
  // Decoration mydecor = BoxDecoration(borderRadius: BorderRadius.circular(21));
  var myOpacity = 1.0;
  bool flag = true;
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: myOpacity,

                //  decoration: mydecor,
                curve: Curves.easeInOut,
                duration: Duration(seconds: 3),
                child: Container(
                  color: _color,
                  height: _height,
                  width: _width,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (flag) {
                        _width = 100.0;
                        _height = 100.0;
                        _color = Colors.green;
                        myOpacity = 0.0;
                        flag = false;
                      } else {
                        _height = 200.0;
                        _width = 200.0;
                        _color = Colors.blue.shade900;
                        myOpacity = 1.0;
                        flag = true;
                      }
                    });
                  },
                  child: Text('Animated'))
            ],
          ),
        ));
  }
}
