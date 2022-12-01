import 'package:flutter/material.dart';

class HeroData {
  final String heroName;
  final String pathToImage;
  final String heroDescription;
  final Color heroBackgroundColor;

  const HeroData(
      {required this.heroName,
        required this.pathToImage,
        required this.heroDescription,
        required this.heroBackgroundColor});
}

const List<HeroData> heroesData = [
  HeroData(
      heroName: 'Deadpool',
      pathToImage:
      'https://mir-s3-cdn-cf.behance.net/project_modules/fs/99da3891478115.5e32bd757ea52.jpg',
      heroDescription: 'Yeah! Thats is a gun in pants',
      heroBackgroundColor: Color.fromARGB(255, 118, 3, 8)),
  HeroData(
      heroName: 'Iron Man',
      pathToImage:
      'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/4ef52e34243765.5605f6d90d3b6.jpg',
      heroDescription: 'A genius billionaire playboy philanthropist',
      heroBackgroundColor: Color.fromARGB(255, 148, 21, 26)),
  HeroData(
      heroName: 'Captain America',
      pathToImage:
      'https://mir-s3-cdn-cf.behance.net/project_modules/fs/90f364136203659.61f5427b48b63.jpg',
      heroDescription: 'Be strong you never know who your are inspiring',
      heroBackgroundColor: Color.fromARGB(255, 62, 79, 179)),
  HeroData(
      heroName: 'Spider Man',
      pathToImage:
      'https://mir-s3-cdn-cf.behance.net/projects/max_808/ae54d254109885.Y3JvcCwxNzQ4LDEzNjgsMTQyLDExMzk.jpg',
      heroDescription: 'With great power comes great responsibility',
      heroBackgroundColor: Color.fromARGB(255, 148, 21, 26)),
  HeroData(
      heroName: 'Doctor Strange',
      pathToImage:
      'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/9695e274106667.5c223d490ccf2.jpg',
      heroDescription: 'Forget everything that you think you know',
      heroBackgroundColor: Color.fromARGB(255, 6, 121, 8)),
  HeroData(
      heroName: 'Thor',
      pathToImage:
      'https://img5.goodfon.ru/wallpaper/nbig/9/81/thor-tor-kris-khemsvort-chris-hemsworth-molnii-boroda-molot.jpg',
      heroDescription: 'How dare you attack the son of Odin',
      heroBackgroundColor: Color.fromARGB(255, 11, 132, 186)),
  HeroData(
      heroName: 'Thanos',
      pathToImage:
      'https://img5.goodfon.ru/wallpaper/nbig/e/b2/mstiteli-voina-beskonechnosti-tanos-avengers-infinity-war-th.jpg',
      heroDescription: 'The hardest choices require the strongest wills',
      heroBackgroundColor: Color.fromARGB(255, 108, 16, 197)),
];
