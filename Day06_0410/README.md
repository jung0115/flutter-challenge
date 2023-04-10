# 🍩 6일차
📅 2023.04.10.월 06:00 ~ 2023.04.11.화 06:00  
  
🎞️ 오늘의 강의: [Flutter 로 웹툰 앱 만들기: From #0.0 to #2.5](https://nomadcoders.co/flutter-for-beginners/lectures/4178)  
✍️ 오늘의 과제: 강의 수강 후, 퀴즈 풀기  
  
### ✅ 오늘의 퀴즈: 10/15
1) We can only build iOS and Android applications with Flutter. **False**  
2) Flutter renders native iOS and Android buttons. **False**  
3) Flutter uses a rendering engine to render the UI. **True**  
4) Flutter builds apps using the native platform UI components. **False**  
5) Flutter applications are made up of Widgets. **True**  
6) What is a Widget in Flutter?  
  (1) Is the basic building block of a user interface  
  (2) Is how we render native widgets on the screen.  
  (3) Is what talks to iOS  
  (4) Is what talks to Android  
**1번**  
7) Widgets are Dart classes. **False -> True**  
8) This is a Flutter widget:  
  class Text {  
    String text;  
    Text(this.text);  
  }  
**False**  
9) What do we do to turn a class into a widget?  
  (1) We extend from one of the core Widget classes like `UIWidget`  
  (2) We extend from one of the core Widget classes like `StatelessWidget`  
  (3) We extend from one of the core Widget classes like `SimpleWidget`  
  (4) We extend from one of the core Widget classes like `DefaultWidget`  
**2번**  
10) This widget will display 'Hello' on the screen:  
  class Text extends StatelessWidget {  
    return Text("Hello");  
  }  
**True -> False**  
11) Flutter widgets need to have a build method. **True**  
12) What does the build method do?  
  (1) It loads the widget on the memory of the phone  
  (2) It renders the Widget on the screen  
  (3) It renders the native Widget on the screen  
  (4) It builds the root of the app  
**2번**  
13) The root of a Flutter application has to be either a 'MaterialApp' or a 'CupertinoApp'. **False -> True**  
14) We use a 'Scaffold' as the root Widget for all of our screens. **False -> True**  
15) What does a 'StatelessWidget' do?  
  (1) It is the simplest widget, it just starts the app  
  (2) It is the simplest widget, it just loads data  
  (3) It is the simplest widget, it just renders Text  
  (4) It is the simplest widget, it just renders UI  
**1번 -> 4번**  
  
### 🧐 틀린 문제
7) Widgets are Dart classes. **False -> True**  
10) This widget will display 'Hello' on the screen:  
  class Text extends StatelessWidget {  
    return Text("Hello");  
  }  
**True -> False**  
13) The root of a Flutter application has to be either a 'MaterialApp' or a 'CupertinoApp'. **False -> True**  
14) We use a 'Scaffold' as the root Widget for all of our screens. **False -> True**  
15) What does a 'StatelessWidget' do?  
  (1) It is the simplest widget, it just starts the app  
  (2) It is the simplest widget, it just loads data  
  (3) It is the simplest widget, it just renders Text  
  (4) It is the simplest widget, it just renders UI  
**1번 -> 4번**  