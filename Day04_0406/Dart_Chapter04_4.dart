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

class Player with Strong, QuickRunner {
  final Team team;

  Player({
    required this.team,
  });
}

void main() {}
