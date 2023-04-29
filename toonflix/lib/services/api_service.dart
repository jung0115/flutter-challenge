// flutter, dart 패키지 찾을 때 -> pub.dev
// https://pub.dev/packages/http/install

import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');

    // await: api 작업이 처리될 때까지 기다림
    // await는 async 함수 안에서만 사용 가능
    final response = await http.get(url);

    // 상태코드가 200 = 성공
    if (response.statusCode == 200) {
      print(response.body);
      return;
    }
    throw Error();
  }
}
