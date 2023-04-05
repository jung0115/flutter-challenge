# 🌼 3일차 
📅 2023.04.05.수 06:00 ~ 2023.04.06.목 06:00  
  
🎞️ 오늘의 강의: [Dart 시작하기: From #3.0 to #3.5](https://nomadcoders.co/dart-for-beginners/lectures/4107)  
✍️ 오늘의 과제: 강의 수강 후, 퀴즈 풀기  
  
### ✅ 오늘의 퀴즈: 12/12
1) This is how we declare a function correctly in Dart:  
  calculateTotal(items: List<int>) void {}  
**False**  
2) When do we use 'void' on a function that does not return anything?  
  (1) Before the function name  
  (2) After the function name  
**1번**  
3) This is how we declare a function correctly in Dart:  
  void calculateTotal(List<int> items){}  
**True**  
4) These two functions are the same:  
  (1) int calculate(int a, int b) => a + b;  
  (2) int calculate(int a, int b) {  
        return a + b;  
      }  
**True**  
5) This function is using positional parameters:  
  calculateTotal(  
    items:5,  
    discount:10,  
    username:'nico',  
  );  
**False**  
6) This function is using named parameters:  
  calculateTotal(  
    5,  
    10,  
    'nico',  
  );  
**False**  
7) How should we call this function?  
  int plus(int a, int b, int c) => a + b + c;  
  (1) plus(a:1, b:2, c:3)  
  (2) plus(1, 2, 3)  
**2번**  
8) How should we call this function?  
  int plus({required int a, required int b, required int c}) => a + b + c;  
  (1) plus(a:1, b:2, c:3)  
  (2) plus(1, 2, 3)  
**1번**  
9) With this code:  
  int plus(int a, int b, [int? c = 1]) => a + b + (c ?? 0);  
  What will the return value of 'plus(1,2)' be?
**4**  
10) With this code:  
  var a = null;  
  var b = a ?? 0;  
  What is the value of 'b'?  
**0**  
11) With this code:  
  var a = 1;  
  a ??=  0;  
  What is the value of 'a'?  
**1**  
12) When do we use 'typedef'?  
  (1) When we want to create an alias for a type  
  (2) When we want to create a function argument  
**1번**  