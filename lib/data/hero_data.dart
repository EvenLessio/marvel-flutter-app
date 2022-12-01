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
      'https://www.film.ru/sites/default/files/news/23869878-917934.jpg',
      heroDescription: 'Yeah! Thats is a gun in pants',
      heroBackgroundColor: Color.fromARGB(255, 118, 3, 8)),
  HeroData(
      heroName: 'Iron Man',
      pathToImage:
      'https://mobimg.b-cdn.net/v3/fetch/02/0225779c88b8dd25b3204bcc3e70d29d.jpeg?w=1470&r=0.5625',
      heroDescription: 'A genius billionaire playboy philanthropist',
      heroBackgroundColor: Color.fromARGB(255, 148, 21, 26)),
  HeroData(
      heroName: 'Captain America',
      pathToImage:
      'https://i.pinimg.com/736x/88/df/6b/88df6bbd16cffc30e8c99cc18ac26cbf.jpg',
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
      'https://i.startfilm.ru/film/f_216865/startfilmru1317327.png',
      heroDescription: 'Forget everything that you think you know',
      heroBackgroundColor: Color.fromARGB(255, 6, 121, 8)),
  HeroData(
      heroName: 'Thor',
      pathToImage:
      'https://www.soyuz.ru/public/uploads/files/3/7241894/201901311325077ae9586818.jpg',
      heroDescription: 'How dare you attack the son of Odin',
      heroBackgroundColor: Color.fromARGB(255, 11, 132, 186)),
  HeroData(
      heroName: 'Thanos',
      pathToImage:
      'https://russianteleweek.ru/wp-content/uploads/2020/07/tanos-1024x576.jpg',
      heroDescription: 'The hardest choices require the strongest wills',
      heroBackgroundColor: Color.fromARGB(255, 108, 16, 197)),
];
