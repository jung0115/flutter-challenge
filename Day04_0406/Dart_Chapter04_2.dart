// 4.7 Abstract Classes ----------------------------------------
abstract class Human {
  void walk();
}

// 4.6 Enums ----------------------------------------------------
enum Team { red, blue }

// 4.5 Cascade Notation -----------------------------------------
class Player extends Human {
  String name;
  int xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void walk() {
    print('I\'m walking');
  }

  void sayHello() {
    print("Hi my name is $name.");
  }
}

void main() {
  var nico = Player(name: 'nico', xp: 1200, team: Team.red);
  nico.name = 'lala';
  nico.xp = 1200000;
  nico.team = Team.blue;
  // 위 4줄과 아래 4줄이 같은 의미.
  var nico2 = Player(name: 'nico', xp: 1200, team: Team.red)
    ..name = 'lala'
    ..xp = 1200000
    ..team = Team.blue;

  nico
    ..name = 'hao'
    ..xp = 9000
    ..team = Team.red
    ..sayHello();
}
