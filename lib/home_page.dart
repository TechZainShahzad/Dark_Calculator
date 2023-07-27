import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> buttonNames = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '0',
    '+',
    '-',
    '*',
    '/',
    '=',
  ];
  String a = "";
  int countPLus = 0;
  String b = "";
  int countSub = 0;
  int countMul = 0;
  int countDiv = 0;
  String op = "";
  String all = "";
  int equalCount = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 60.0,
          ),
          Text(
            all, //display var
            style: TextStyle(
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Expanded(
            child: Center(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 10.0),
                itemCount: buttonNames.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 222, 0, 0),
                      shadowColor: Color.fromARGB(255, 255, 255, 255),
                      iconColor: Color.fromARGB(255, 255, 255, 255),
                      surfaceTintColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                    onPressed: () {
                      if (index == 0) {
                        if ((countPLus == 0) &&
                            (countSub == 0) &&
                            (countMul == 0) &&
                            (countDiv == 0)) {
                          a = a + "1";

                          setState(() {});
                        } else {
                          b = b + "1";

                          setState(() {});
                        }
                      } else if (index == 1) {
                        if ((countPLus == 0) &&
                            (countSub == 0) &&
                            (countMul == 0) &&
                            (countDiv == 0)) {
                          a = a + "2";

                          setState(() {});
                        } else {
                          b = b + "2";

                          setState(() {});
                        }
                      } else if (index == 2) {
                        if ((countPLus == 0) &&
                            (countSub == 0) &&
                            (countMul == 0) &&
                            (countDiv == 0)) {
                          a = a + "3";

                          setState(() {});
                        } else {
                          b = b + "3";

                          setState(() {});
                        }
                      } else if (index == 3) {
                        if ((countPLus == 0) &&
                            (countSub == 0) &&
                            (countMul == 0) &&
                            (countDiv == 0)) {
                          a = a + "4";

                          setState(() {});
                        } else {
                          b = b + "4";
                          setState(() {});
                        }
                      } else if (index == 4) {
                        if ((countPLus == 0) &&
                            (countSub == 0) &&
                            (countMul == 0) &&
                            (countDiv == 0)) {
                          a = a + "5";

                          setState(() {});
                        } else {
                          b = b + "5";

                          setState(() {});
                        }
                      } else if (index == 5) {
                        if ((countPLus == 0) &&
                            (countSub == 0) &&
                            (countMul == 0) &&
                            (countDiv == 0)) {
                          a = a + "6";

                          setState(() {});
                        } else {
                          b = b + "6";

                          setState(() {});
                        }
                      } else if (index == 6) {
                        if ((countPLus == 0) &&
                            (countSub == 0) &&
                            (countMul == 0) &&
                            (countDiv == 0)) {
                          a = a + "7";

                          setState(() {});
                        } else {
                          b = b + "7";

                          setState(() {});
                        }
                      } else if (index == 7) {
                        if ((countPLus == 0) &&
                            (countSub == 0) &&
                            (countMul == 0) &&
                            (countDiv == 0)) {
                          a = a + "8";

                          setState(() {});
                        } else {
                          b = b + "8";

                          setState(() {});
                        }
                      } else if (index == 8) {
                        if ((countPLus == 0) &&
                            (countSub == 0) &&
                            (countMul == 0) &&
                            (countDiv == 0)) {
                          a = a + "9";

                          setState(() {});
                        } else {
                          b = b + "9";

                          setState(() {});
                        }
                      } else if (index == 9) {
                        if ((countPLus == 0) &&
                            (countSub == 0) &&
                            (countMul == 0) &&
                            (countDiv == 0)) {
                          a = a + "0";

                          setState(() {});
                        } else {
                          b = b + "0";

                          setState(() {});
                        }
                      } else if (index == 10) {
                        countPLus++;
                        op = "+";
                        setState(() {});
                      } else if (index == 11) {
                        countSub++;
                        op = "-";
                        setState(() {});
                      } else if (index == 12) {
                        countMul++;
                        op = "*";
                        setState(() {});
                      } else if (index == 13) {
                        countDiv++;
                        op = "/";
                        setState(() {});
                      } else if (index == 14) {
                        equalCount++;
                        calculation();
                        setAsa();
                        setState(() {});
                      }
                      if (equalCount == 0) {
                        all = a + op + b;
                      }
                    },
                    child: Text(buttonNames[index].toString(),
                        style: TextStyle(fontSize: 50)),
                  );
                },
              ),
            ),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 222, 0, 0),
              shadowColor: Color.fromARGB(255, 255, 255, 255),
              iconColor: Color.fromARGB(255, 255, 255, 255),
              surfaceTintColor: Color.fromARGB(255, 255, 255, 255),
            ),
            onPressed: () {
              reset();
              setState(() {});
            },
            child: Text(
              "CLR",
              style: TextStyle(fontSize: 50),
            ),
          ),
          SizedBox(
            height: 130,
          )
        ],
      ),
    );
  }

  void reset() {
    a = "";
    b = "";
    op = "";
    all = "";
    countDiv = countMul = countPLus = countSub = equalCount = 0;
  }

  void setAsa() {
    a = all;
    b = "";
    op = "";
    all = "";
    countDiv = countMul = countPLus = countSub = equalCount = 0;
  }

  void calculation() {
    double Ai = double.parse(a); //Ai means a as a integer
    double Bi = double.parse(b); //Bi means b as a integer
    double temp = 0;
    int temp1 = 0;
    switch (op) {
      case "+":
        temp = Ai + Bi;
        break;
      case "-":
        temp = Ai - Bi;
        break;
      case "*":
        temp = Ai * Bi;
        break;
      case "/":
        temp = Ai / Bi;
        break;
    }
    if (temp == temp.roundToDouble()) {
      temp1 = temp.round();
      all = temp1.toString();
    } else {
      all = temp.toStringAsFixed(4);
    }
  }
}
