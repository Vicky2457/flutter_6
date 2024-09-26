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
  var arrData = [
    {'name': 'raman', 'mobno': '9518659863', 'unread': '1'},
    {'name': 'sham', 'mobno': '95186545663', 'unread': '3'},
    {'name': 'arm', 'mobno': '45678863', 'unread': '6'},
    {'name': 'raghu', 'mobno': '997785863', 'unread': '5'},
    {'name': 'sundar', 'mobno': '7755959863', 'unread': '4'},
    {'name': 'gyan', 'mobno': '956685863', 'unread': '2'},
  ];
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
          child: ListView(
              children: arrData
                  .map((value) => ListTile(
                        leading: Icon(Icons.account_circle),
                        title: Text(value['name'].toString()),
                        subtitle: Text(value['mobno'].toString()),
                        trailing: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 12,
                            child: Text(value['unread'].toString())),
                      ))
                  .toList()),
        ));
  }
}
