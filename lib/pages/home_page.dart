import 'package:flutter/material.dart';

import 'package:fkn_labs_2022/widgets/page_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        title: Image.asset('assets/marvel_logo.png', width: 400, height: 50),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: const <Widget>[
            SizedBox(height: 25.0),
            Text(
              'Choose your hero',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              ),
            ),
            Expanded(child: MyPageView()),
          ],
        ),
      ),
    );
  }
}