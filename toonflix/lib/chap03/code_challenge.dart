import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF1F1F1F),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MONDAY 16',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text(
                            'TODAY',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 44,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.circle,
                            color: Color(0xFFA0337A),
                            size: 10,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '17',
                            style: TextStyle(
                              color: Color(0xFF909090),
                              fontSize: 40,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            '18',
                            style: TextStyle(
                              color: Color(0xFF909090),
                              fontSize: 40,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            '19',
                            style: TextStyle(
                              color: Color(0xFF909090),
                              fontSize: 40,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            '20',
                            style: TextStyle(
                              color: Color(0xFF909090),
                              fontSize: 40,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 20, 0),
                  child: Column(
                    children: [
                      Schedule(
                        content: 'DESIGN\nMEETING',
                        startHour: '11',
                        startMinute: '30',
                        finishHour: '12',
                        finishMinute: '20',
                        member: ['ALEX', 'HELENA', 'NANA'],
                        background: Color(0xFFFDF771),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Schedule(
                        content: 'DAILY\nPROJECT',
                        startHour: '12',
                        startMinute: '36',
                        finishHour: '14',
                        finishMinute: '10',
                        member: [
                          'ME',
                          'RICHARD',
                          'CIRY',
                          'COCO',
                          'NICO',
                          'SHALLY',
                          'MAMA'
                        ],
                        background: Color(0xFF956DC8),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Schedule(
                        content: 'WEEKLY\nPLANNING',
                        startHour: '15',
                        startMinute: '00',
                        finishHour: '16',
                        finishMinute: '00',
                        member: ['DEN', 'NANA', 'MARK'],
                        background: Color(0xFFC6ED67),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Schedule extends StatelessWidget {
  final String content, startHour, startMinute, finishHour, finishMinute;
  final List<String> member;
  final Color background;

  const Schedule({
    super.key,
    required this.content,
    required this.startHour,
    required this.startMinute,
    required this.finishHour,
    required this.finishMinute,
    required this.member,
    required this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  startHour,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  startMinute,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  "|",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  finishHour,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  finishMinute,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    content,
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        member[0],
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        member[1],
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        member[2],
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        member.length > 3 ? '+${member.length - 3}' : "",
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
