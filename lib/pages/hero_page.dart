import 'package:flutter/material.dart';

import 'package:fkn_labs_2022/data/hero_data.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Hero(
            tag: 'hero/$index',
            child: Stack(children: [
              Image.network(
                heroesData[index].pathToImage,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 35.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          heroesData[index].heroName,
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0),
                        ),
                        const SizedBox(height: 13),
                        Text(
                          heroesData[index].heroDescription,
                          style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 232, 227, 229),
                              fontSize: 24.0),
                        ),
                      ])),
            ])));
  }
}