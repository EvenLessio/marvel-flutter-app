import 'package:flutter/material.dart';

import 'package:fkn_labs_2022/request/get_all_heroes.dart';
import 'package:fkn_labs_2022/request/get_hero_by_id.dart';
import 'package:fkn_labs_2022/data/hero_data.dart';
import 'package:fkn_labs_2022/pages/hero_page.dart';
import 'package:fkn_labs_2022/widgets/hero_card_background.dart';
import 'package:fkn_labs_2022/widgets/hero_card.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  late PageController pageController = PageController();

  int page = 0;
  List<HeroData> listHeroes = <HeroData>[];

  void getHeroData() async {
    try {
      var heroes = await getAllHeroes();
      List<HeroData> result = <HeroData>[];
      for (var id in heroes) {
        result.add(await getHeroById(id));
      }
      setState(() {
        listHeroes = result;
      });
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Error"),
          content: const Text("Heroes Data not allowed"),
          actions: [
            TextButton(
              child: const Text('Ok'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    getHeroData();
    pageController.addListener(() {
      setState(() {
        page = pageController.page != null ? pageController.page!.round() : 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Positioned.fill(
        child: CustomPaint(
            painter: HeroCardBackground(
                backgroundColor: (pageController.hasClients
                    ? listHeroes[page].heroBackgroundColor
                    : listHeroes[0].heroBackgroundColor))),
      ),
      PageView.builder(
        controller: pageController,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HeroPage(
                      index: index,
                      heroData: listHeroes[index],
                    ))),
            child: Hero(
              tag: 'hero/$index',
              child: Center(child: HeroCard(heroData: listHeroes[index])),
            ),
          );
        },
        itemCount: listHeroes.length,
      ),
    ]);
  }
}
