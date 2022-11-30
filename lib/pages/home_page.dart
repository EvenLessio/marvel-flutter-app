import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset('assets/marvel_logo.png', width: 400, height: 50),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 41, 37, 37),
          elevation: 0
      ),
    );
  }
}