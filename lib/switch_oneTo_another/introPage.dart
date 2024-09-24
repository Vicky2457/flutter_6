import 'package:flutter/material.dart';
import 'package:project_6/switch_oneTo_another/main.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('intro'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 100,
              width: 200,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyHomePage()));
                },
                child: const Text('Next page'))
          ],
        ),
      ),
    );
  }
}
