import 'package:bmi_calculator/functions.dart';
import 'package:flutter/material.dart';
import 'input.dart';
import 'Bmi.dart';

class Result extends StatelessWidget {

  Result({@required this.bmiResult,this.text});
  final String bmiResult;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),


      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            child: Center(
              child: Text("YOUR RESULT" ,
              style: TextStyle(fontSize: 20, color: Colors.amber),),
            ),
          ),),
          Expanded(

            flex: 5,
            child: Reuseable(
              colour: Color(0XFF0A0E63),
              cardChild: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children:<Widget> [


                    Text(bmiResult,
                    style: TextStyle(fontSize: 34, color: Colors.lightGreen),
                    ),

                  Text(text,
                  style: TextStyle(fontSize: 50.0,color: Colors.white),),







                ],
              ),
            ),
          ),
          GestureDetector(
            onTap:(){
              Navigator.pop(context);

            },
            child:Container(



              child:Center(child: Text('RE-CALCULATE',style: TextStyle(fontSize: 40),)),
              margin: EdgeInsets.only(top: 10.0),
              width:double.infinity,
              color: Colors.pink,
            ),
          ),


        ],
      ),

    );
  }
}
