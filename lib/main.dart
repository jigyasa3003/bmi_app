
import 'package:flutter/material.dart';
import 'input.dart';
import 'Result.dart';
import 'package:bmi_calculator/Bmi.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      theme:
        // primaryColor: Color(0XFF0A0E21),
        //   scaffoldBackgroundColor: Color(0XFF0A0E21),
      ThemeData.dark().copyWith(
  primaryColor: Color(0XFF0A0E21),
    scaffoldBackgroundColor:Color(0XFF0A0E21),

),

      home: InputPage(),
    );
  }
}



