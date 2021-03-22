import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MakingDecision());
}

class MakingDecision extends StatefulWidget {
  @override
  _MakingDecisionState createState() => _MakingDecisionState();
}

class _MakingDecisionState extends State<MakingDecision> {

  int ballNumber = Random().nextInt(5) + 1;

  void setRandomNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.white,
            child: TextButton(
              child: Image.asset("images/ball$ballNumber.png"),
              onPressed: () {
                setRandomNumber();
              },
            ),
          ),
        ),
      ),
    ));
  }
}
