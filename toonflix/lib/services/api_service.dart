// flutter, dart 패키지 찾을 때 -> pub.dev
// https://pub.dev/packages/http/install

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];

    final url = Uri.parse('$baseUrl/$today');

    // await: api 작업이 처리될 때까지 기다림
    // await는 async 함수 안에서만 사용 가능
    final response = await http.get(url);

    // 상태코드가 200 = 성공
    if (response.statusCode == 200) {
      //print(response.body);

      // JSON으로 변환
      final List<dynamic> webtoons = jsonDecode(response.body);

      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }

      return webtoonInstances;
    }
    throw Error();
  }
}
