import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 각 타이머 시간
  static const times = [15, 20, 25, 30, 35];

  static const minuteToSeconds = 60;
  static const restTime = 5;

  // ROUND, GOAL 제한
  static const totalRoundLimited = 4;
  static const totalGoalLimited = 12;

  int selectTime = 2;
  int totalSeconds = times[2] * minuteToSeconds;
  bool isRunning = false;
  bool isRest = false;
  int totalRound = 0;
  int totalGoal = 0;
  late Timer timer;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      // 휴식 시간 끝남 -> 공부 시간으로 세팅
      if (isRest) {
        if (totalRound == totalRoundLimited) {
          setState(() {
            totalRound = 0;
            isRunning = false;
            totalSeconds = times[selectTime] * minuteToSeconds;
            isRest = false;
          });
        } else {
          setState(() {
            isRunning = false;
            totalSeconds = times[selectTime] * minuteToSeconds;
            isRest = false;
          });
        }
      }
      // 공부 시간 끝남 -> 휴식 시간으로 세팅
      else {
        // 4사이클 끝남 -> Round 리셋, Goal 증가
        if (totalRound == (totalRoundLimited - 1)) {
          setState(() {
            totalGoal += 1;
            totalRound += 1;
            isRunning = false;
            totalSeconds = times[selectTime] * minuteToSeconds;
            isRest = true;
          });
        }
        // 4 사이클 안 끝남
        else {
          setState(() {
            totalRound += 1;
            isRunning = false;
            totalSeconds = restTime * minuteToSeconds;
            isRest = true;
          });
        }
      }
      timer.cancel();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void onResetPressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
      totalSeconds = times[selectTime] * minuteToSeconds;
    });
  }

  void onSelectTime(int selectTimeIndex) {
    setState(() {
      selectTime = selectTimeIndex;
      totalSeconds = times[selectTime] * minuteToSeconds;
    });
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split('.').first.substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> timeSelectList = [];

    timeSelectList.add(const SizedBox(
      width: 15,
    ));

    for (int i = 0; i < 5; i++) {
      timeSelectList.add(Container(
        decoration: BoxDecoration(
          color: i == selectTime
              ? Theme.of(context).cardColor
              : Theme.of(context).cardColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextButton(
          onPressed: () => onSelectTime(i),
          child: Text(
            times[i].toString(),
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ));
    }

    timeSelectList.add(const SizedBox(
      width: 15,
    ));

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          // 제목
          Flexible(
            flex: 1,
            child: Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'POMOTIMER',
                    style: TextStyle(
                      color: Theme.of(context).cardColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // 진행 시간
          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isRest
                    ? Text(
                        '😎 Rest Time!',
                        style: TextStyle(
                          color: Theme.of(context).cardColor,
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    : Text(
                        'Study Time!',
                        style: TextStyle(
                          color: Theme.of(context).cardColor,
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                Text(
                  format(totalSeconds),
                  style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 89,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          // 초 선택
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: timeSelectList,
            ),
          ),
          // 시작, 멈춤, 리셋 버튼
          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 90,
                      color: isRunning
                          ? Colors.black.withOpacity(0.4)
                          : Theme.of(context).cardColor,
                      onPressed: isRunning ? onPausePressed : onStartPressed,
                      icon: Icon(
                        isRunning ? Icons.pause_circle : Icons.play_circle,
                      ),
                    ),
                    IconButton(
                      iconSize: 90,
                      color: Theme.of(context).cardColor,
                      onPressed: onResetPressed,
                      icon: const Icon(
                        Icons.stop_circle_rounded,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Round, Goal
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '$totalRound/$totalRoundLimited',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color:
                                  Theme.of(context).cardColor.withOpacity(0.8),
                            ),
                          ),
                          Text(
                            'ROUND',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).cardColor,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '$totalGoal/$totalGoalLimited',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color:
                                  Theme.of(context).cardColor.withOpacity(0.8),
                            ),
                          ),
                          Text(
                            'GOAL',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).cardColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
