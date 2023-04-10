// 4.9 Mixins ------------------------------------------------------
class Strong {
  final double strenghtLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("ruuuuuuuuuuun!");
  }
}

enum Team { red, blue }

// 플러터 프로젝트 시작하니까 갑자기 에러 남 짜증 남. 빨간 거 보기 싫어서 주석 해둠.
/*class Player with Strong, QuickRunner {
  final Team team;

  Player({
    required this.team,
  });
}*/

void main() {}
