// 3.3 Optional Positional Parameters -----------
String sayHello(String name, int age, [String? country = 'cuba']) =>
    "Hello $name, you are $age, and you come from $country.";

// 3.4 QQ Operator ------------------------------
String capitalizeName(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }
  return 'ANON';
}

String capitalizeName2(String? name) =>
    name != null ? name.toUpperCase() : 'ANON';

String capitalizeName3(String? name) => name?.toUpperCase() ?? 'ANON';

// 3.5 Typedef --------------------------------
typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {
  var result = sayHello('nico', 12);
  print(result);

  print(capitalizeName('nico'));
  print(capitalizeName(null));

  print(capitalizeName2(null));
  print(capitalizeName3(null));

  // ??는 좌항이 null 값이면 우항을 실행함
  String? name;
  name ??= 'nico';
  name ??= 'another';
  print(name);

  print(reverseListOfNumbers([1, 2, 3]));
}
