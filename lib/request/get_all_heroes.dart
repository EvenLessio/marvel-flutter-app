import 'package:fkn_labs_2022/api/api_client.dart';

const limitHeroes = 7;
const offset = 1240;

Future<List<int>> getAllHeroes() async {
  List<int> result = <int>[];
  var allHeroesInfo = await ApiClient().fetch('https://gateway.marvel.com:443/v1/public/characters?limit=$limitHeroes&offset=$offset&');
  allHeroesInfo.data['data']['results'].forEach((value) => result.add(value['id']));
  return result;
}