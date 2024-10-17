import 'package:flutter/material.dart';

class Resultscreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;
  Resultscreen({
    required this.isMale,
    required this.age,
    required this.result,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp),
            color: Colors.white,
          ),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text(
            'BMI Result',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Gender : ${isMale? 'Male':'Female'}',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Result : $result',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Age : $age',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
