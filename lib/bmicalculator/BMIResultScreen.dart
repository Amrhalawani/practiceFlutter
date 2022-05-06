// stful is a shortcut to tell the ide to create stateful widget
// stless for stateless widget

import 'dart:ffi';

import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  bool isMale;
  double bmi;
  double age;

  BMIResultScreen(this.isMale, this.bmi, this.age) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Gender: ${isMale ? 'Male' : 'Female'}',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            Text(
              'age: ${age.round()}',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            Text(
              'BMI RESULT: ${bmi.round()}',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 36),
            ),
          ],
        ),
      ),
    );
  }
}
