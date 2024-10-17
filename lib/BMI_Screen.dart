import 'dart:math';

import 'package:flutter/material.dart';

import 'resultScreen.dart';

class bmi extends StatefulWidget {
  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool isMale = true;
  int Wbmi = 60;
  double Hbmi = 120;
  int Abmi = 20;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.black),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isMale = true;
                                });
                              },
                              icon: Icon(
                                Icons.male,
                                size: 100,
                                color: isMale ? Colors.blue : Colors.white,
                              ),
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                color: isMale ? Colors.blueAccent : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.black),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isMale = false;
                                });
                              },
                              icon: Icon(
                                Icons.female,
                                size: 100,
                                color: !isMale ? Colors.pink : Colors.white,
                              ),
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                color:
                                    !isMale ? Colors.pinkAccent : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 25,
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${Hbmi.round()}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                top: 20, start: 10),
                            child: Text(
                              'cm',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        activeColor: Colors.white,
                        value: Hbmi,
                        onChanged: (value) {
                          setState(() {
                            Hbmi = value;
                          });
                        },
                        max: 220,
                        min: 80,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.blueGrey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '$Wbmi',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      Wbmi--;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove_circle,
                                    size: 70,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      Wbmi++;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add_circle,
                                    size: 70,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '$Abmi',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      Abmi--;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove_circle,
                                    size: 70,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      Abmi++;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add_circle,
                                    size: 70,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              double result = Wbmi / pow(Hbmi / 100, 2);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Resultscreen(age: Abmi,isMale: isMale,result: result.round(),),
                  ));
            },
            minWidth: double.infinity,
            child: Text(
              'CALCULATE',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
