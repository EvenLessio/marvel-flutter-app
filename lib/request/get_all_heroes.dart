import 'package:fkn_labs_2022/api/api_client.dart';

const limitHeroes = 10;

Future<List<int>> getAllHeroes() async {
  List<int> result = <int>[];
  var allHeroesData = await ApiClient().fetch('https://gateway.marvel.com:443/v1/public/characters?limit=$limitHeroes&');
  allHeroesData.data['data']['results'].forEach((value) => result.add(value['id']));
  return result;
}