// 4.8 Inheritance
class Human {
  final String name;

  Human(this.name);

  void sayHello() {
    print("Hi, my name is $name.");
  }

  void sayBye() {
    print("Bye, my name is $name.");
  }
}

enum Team { red, blue }

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name);

  @override
  void sayBye() {
    super.sayBye();
    print("Good bye, my name is $name.");
  }
}

void main() {
  var player = Player(
    team: Team.red,
    name: 'nico',
  );
  player.sayHello();
  player.sayBye();
}
