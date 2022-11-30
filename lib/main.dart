import 'package:fkn_labs_2022/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marvel Heroes',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 41, 37, 37),
  ),
  home: const HomePage(),
    );
  }
}