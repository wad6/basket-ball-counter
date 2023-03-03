// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

void main() {
  runApp(Basketcounter());
}

class Basketcounter extends StatefulWidget {
  @override
  State<Basketcounter> createState() => _BasketcounterState();
}

class _BasketcounterState extends State<Basketcounter> {
  int teamApoints = 0;

  int teamBpoints = 0;

  void addonepoint() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            'BasketBall Counter ',
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A ',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamApoints',
                      style: TextStyle(fontSize: 140),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purpleAccent,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoints++;
                        });
                      },
                      child: Text(
                        'Add 1 point ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purpleAccent,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoints = teamApoints + 2;
                        });
                      },
                      child: Text(
                        'Add 2 points ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purpleAccent,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamApoints = teamApoints + 3;
                        });
                      },
                      child: Text(
                        'Add 3 points ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B ',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamBpoints',
                      style: TextStyle(fontSize: 140),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purpleAccent,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoints++;
                        });
                      },
                      child: Text(
                        'Add 1 point ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purpleAccent,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoints = teamBpoints + 2;
                        });
                      },
                      child: Text(
                        'Add 2 points ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purpleAccent,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoints = teamBpoints + 3;
                        });
                      },
                      child: Text(
                        'Add 3 points ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 130,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purpleAccent,
                minimumSize: Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  teamApoints = 0;
                  teamBpoints = 0;
                });
              },
              child: Text(
                'Reset  ',
                style: TextStyle(fontSize: 28, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
