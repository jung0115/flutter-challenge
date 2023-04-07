// 4일차
// 4.0 Your First Dart Class --------------------
class Player {
  String name = 'nico';
  final int xp = 1500; // final 하면 수저 못 함

  void sayHello() {
    print("Hi my name is $name");
  }

  void sayHello2() {
    var name = "test";
    print("Hi my name is ${this.name}");
  }
}

// 4.1 Constructors ----------------------------
class Player2 {
  final String name;
  int xp;

  /*Player2(String name, int xp) {
    this.name = name;
    this.xp = xp;
  }*/
  Player2(this.name, this.xp); // 위에 주석해둔 거랑 같은 의미

  void sayHello() {
    print("Hi my name is $name");
  }
}

// 4.2 Named Constructor Parameters -----------------------------------
class PlayerNamed {
  final String name;
  int xp, age;
  String team;

  PlayerNamed({
    required this.name,
    required this.xp,
    required this.age,
    required this.team,
  });

  // 4.3 Named Constructors --------------------------------------------
  PlayerNamed.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  PlayerNamed.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  // 4.4 Recap -------------------------------------------------------
  PlayerNamed.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        age = playerJson['age'],
        team = playerJson['team'],
        xp = playerJson['xp'];

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player();
  print(player.name);
  player.name = 'lalalala';
  print(player.name);

  player.sayHello();
  player.sayHello2();

  var player2 = Player2('ss', 20);
  player2.sayHello();

  var playerNamed = PlayerNamed(
    name: 'nico',
    xp: 100,
    age: 22,
    team: 'red',
  );

  var bluePlayer = PlayerNamed.createBluePlayer(
    name: 'coco',
    age: 22,
  );

  var redPlayer = PlayerNamed.createRedPlayer('vivi', 19);

  var apiData = [
    {
      "name": 'api_nico',
      "xp": 100,
      "age": 22,
      "team": 'red',
    },
    {
      "name": 'api_kiti',
      "xp": 90,
      "age": 18,
      "team": 'blue',
    },
    {
      "name": 'api_lala',
      "xp": 85,
      "age": 23,
      "team": 'red',
    },
  ];
  apiData.forEach((playerJson) {
    var player = PlayerNamed.fromJson(playerJson);
    player.sayHello();
  });
}
