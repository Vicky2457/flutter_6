import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FirstPage extends StatelessWidget {
  var nameFromHome;
  FirstPage(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('first'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome  ,  $nameFromHome", style: TextStyle(fontSize: 20)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back'))
            ],
          ),
        ));
  }
}
