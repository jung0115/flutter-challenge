// 3일차

// 3.0 Defining a Function -------------------------------------------
String sayHello(String name) {
  return "Hello $name nice to meet you!";
}

String sayHello2(String name) => "Hello $name nice to meet you!";

// 3.1 Named Parameters ----------------------------------------------
String sayHello3(String name, int age, String country) {
  return "Hello $name, you are $age, and you come from $country.";
}

// Named argument를 이용하는 방법 => default 값을 지정해야 함
String sayHelloNamed({
  String name = 'anon',
  int age = 99,
  String country = 'wakanda',
}) {
  return "Hello $name, you are $age, and you come from $country.";
}

// default값을 지정하지 않으려면? -> required 사용 => 해당 값이 반드시 넘어와야 함
String sayHelloNamedRequired({
  required String name,
  required int age,
  required String country,
}) {
  return "Hello $name, you are $age, and you come from $country.";
}

void main() {
  print(sayHello('nico'));
  print(sayHello2('nico2'));

  print(sayHello3('nico', 19, 'cuba')); // 좋은 방법이 아님
  // Named argument를 이용하는 방법
  print(sayHelloNamed(
    age: 12,
    country: 'cuba',
    name: 'nico',
  ));
  print(sayHelloNamed(
    age: 12,
  ));
  print(sayHelloNamed()); // 이렇게 값을 안 넘겨줄 수도 있음.
  // 값을 안 넘겨주는 걸 방지하려면 required 사용
  print(sayHelloNamedRequired(
    name: 'nico',
    age: 20,
    country: 'newyork',
  ));
}
