// 2일차 - 2023.04.04.화
void main() {
  // 2.0 Basic Data Types --------------------------------------------
  String name = "nico";
  bool alive = true;
  int age = 12;
  double money = 69.99;

  num x = 12;
  x = 1.1; // num은 정수, 실수 둘 다 가능
  // int, double은 num에서 파생된 class

  // name. 이런식으로 해보면 사용 가능한 메서드 보임

  // 2.1 Lists ---------------------------------------------------------
  var numbers = [1, 2, 3, 4]; // List<int> numbers = [1, 2, 3, 4]; 와 같음
  List<int> numbers2 = [1, 2, 3, 4];
  numbers2.add(5); // 선언된 자료형만 추가 가능
  numbers2.first; // 첫 번째 요소를 가져옴
  numbers2.last; // 마지막 요소를 가져옴

  var giveMeFive = true;
  var collectionNumbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, // if에 따라 값의 존재 유무가 결정됨.
  ];
  print(collectionNumbers);

  // 2.2 String Interpolation ------------------------------------------
  var person = 'Hao';
  var personAge = 10;
  var greeting =
      "Hello everyone, my name is $person, and I'm ${personAge + 2}.";
  print(greeting);

  // 2.3 Collection For ------------------------------------------------
  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "💝 $friend",
  ];
  print(newFriends);

  // 2.4 Maps ----------------------------------------------------------
  var player = {
    'name': 'nico',
    'xp': 19.99,
    'superpower': false,
  };
  Map<String, bool> test = {
    'one': true,
    'two': false,
  };
  // key 값에 List
  Map<List<int>, bool> complex = {
    [1, 2, 3]: true,
    [2, 3, 4]: false,
  };
  // value 값으로 다양한 자료형
  Map<String, Object> wow = {
    'a': true,
    'b': 12,
  };
  // Map을 List에
  List<Map<String, Object>> good = [
    {
      'name': 'nico',
      'xp': 12.3,
    },
    {
      'name': 'hao',
      'xp': 12.9,
    },
  ];

  // 2.5 Sets --------------------------------------------------------
  // Set의 모든 아이템은 unique
  Set<int> nums = {1, 2, 3, 4};
  nums.add(1); // 이미 존재하는 값은 또 추가할 수 없음
  nums.add(1);
  nums.add(5); // 존재하지 않는 값은 추가 가능
  print(nums);
}
