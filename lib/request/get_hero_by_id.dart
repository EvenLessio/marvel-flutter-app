import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fkn_labs_2022/api/api_client.dart';
import 'package:fkn_labs_2022/data/hero_data.dart';

Color getRandomColor() {
  return Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
      .withOpacity(1.0);
}

Future<HeroData> getHeroById(int id) async {
  HeroData result = HeroData(
      id: 0,
      heroName: "",
      pathToImage: "",
      heroDescription: "",
      heroBackgroundColor: getRandomColor());
  var response = await ApiClient()
      .fetch('https://gateway.marvel.com/v1/public/characters/$id?');
  response.data['data']['results'].forEach((value) {
    result = HeroData(
        id: value['id'],
        heroName: value['name'],
        pathToImage:
        value['thumbnail']['path'] + '.' + value['thumbnail']['extension'],
        heroDescription: value['description'],
        heroBackgroundColor: getRandomColor());
  });
  return result;
}