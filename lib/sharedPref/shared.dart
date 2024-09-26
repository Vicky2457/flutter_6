import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  var namecontroller = TextEditingController();

  static const String KEYNAME = "name";
  var nameValue = "no value saved";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Shared pref',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
          backgroundColor: const Color.fromARGB(255, 31, 105, 233),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                    label: Text('name'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21))),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    //  var name = namecontroller.text.toString();
                    var pref = await SharedPreferences.getInstance();
                    pref.setString(KEYNAME, namecontroller.text.toString());
                  },
                  child: Text(nameValue))
            ],
          ),
        ));
  }

  void getValue() async {
    var pref = await SharedPreferences.getInstance();
    var getName = pref.getString(KEYNAME);
    nameValue = getName??"no value saved";
    setState(() {
      
    });
  }
}
