import 'package:flutter/material.dart';

class HeroData {
  final int id;
  final String heroName;
  final String pathToImage;
  final String heroDescription;
  final Color heroBackgroundColor;

  const HeroData({
    required this.id,
    required this.heroName,
    required this.pathToImage,
    required this.heroDescription,
    required this.heroBackgroundColor
  });
}