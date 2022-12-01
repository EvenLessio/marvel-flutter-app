import 'package:flutter/material.dart';

import 'package:fkn_labs_2022/data/hero_data.dart';

class HeroCard extends StatelessWidget {
  final HeroData heroData;

  const HeroCard({Key? key, required this.heroData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.transparent,
      child: Container(
        width: 300,
        height: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: NetworkImage(heroData.pathToImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.fromLTRB(14.0, 0.0, 0.0, 28.0),
          child: Text(
            heroData.heroName,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
        ),
      ),
    );
  }
}
