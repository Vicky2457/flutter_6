import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Detail',
          style: TextStyle(fontSize: 20, color: Colors.white),
        )),
        backgroundColor: const Color.fromARGB(255, 31, 105, 233),
      ),
      body: Container(
        child: Hero(
          tag: 'background',
          child: Image.asset(
            'assets/images/flower.jpeg',
            
          ),
        ),
      ),
    );
  }
}
