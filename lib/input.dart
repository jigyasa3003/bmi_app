import 'package:bmi_calculator/Bmi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'functions.dart';
import 'constants.dart';
import 'Result.dart';
import 'package:bmi_calculator/Bmi.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color cardColor_male = Color(0XFF0A0E63);
  Color cardColor_female = Color(0XFF0A0E63);
  int height=180;
  int weight =30;
  int age=10;

  void updateColor(int gender) {
    if (gender == 1) {
      if (cardColor_male == inactiveColor) {
        cardColor_male = activeColor;
        cardColor_female = inactiveColor;
      } else {
        cardColor_male = inactiveColor;
      }
    } else {
      if (cardColor_female == inactiveColor) {
        cardColor_female = activeColor;
        cardColor_male = inactiveColor;
      } else {
        cardColor_female = inactiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: Reuseable(
                    colour: cardColor_male,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: Reuseable(
                    colour: cardColor_female,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      text: "FEMALE",
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: Reuseable(
              colour: Color(0XFF0A0E63),
              cardChild: Column(

                children: [
                  Text(
                   "HEIGHT",
                    style: TextStyle(fontSize: 18.0, color: Colors.amber),
                  ),
                  Row(    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text( height.toString(),
                      style:TextStyle(fontSize: 50.0, color: Colors.white) ,),
                    ],
                  ),
                  Slider(value: height.toDouble(), min: 120.0 ,max:220.0,
                     activeColor: Colors.pinkAccent,
                     inactiveColor: Colors.white,
                     onChanged: (double newValue){
                   setState(() {
                     height= newValue.round();
                   });

                     },
                  ),

                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: Reuseable(
                  colour: Color(0XFF0A0E63),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('WEIGHT',
                      style:TextStyle(fontSize: 18.0, color: Colors.amber), ),
                      Text(weight.toString(),
                      style:TextStyle(fontSize: 50.0, color: Colors.white) ,) ,
                 Row(
                   children: [
                     SelfButton(icon:  FontAwesomeIcons.minus,onPressed:(){
                       setState(() {
                         weight--;
                       });
                     },),
                     SelfButton(icon: FontAwesomeIcons.plus,onPressed: (){
                       setState(() {
                         weight++;
                       });
                     },),
                   ],
                 ),

                    ],
                  ),
                ),
              ),
              Expanded(
                child: Reuseable(
                  colour: Color(0XFF0A0E63),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('AGE',
                        style:TextStyle(fontSize: 18.0, color: Colors.amber), ),
                      Text(age.toString(),
                        style:TextStyle(fontSize: 50.0, color: Colors.white) ,) ,
                      Row(
                        children: [
                          SelfButton(icon:  FontAwesomeIcons.minus,onPressed:(){
                            setState(() {
                              age--;
                            });
                          },),
                          SelfButton(icon: FontAwesomeIcons.plus,onPressed: (){
                            setState(() {
                              age++;
                            });
                          },),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),),
          GestureDetector(
            onTap:(){
              Calc calc= Calc(height: height,weight: weight);

              Navigator.push(context, MaterialPageRoute(builder:(context)=>Result(
                bmiResult:calc.calculateBMI(),
                text: calc.getResult(),
              )));

            },
    child:Container(



              child:Center(child: Text('CALCULATE',style: TextStyle(fontSize: 40),)),
              margin: EdgeInsets.only(top: 10.0),
    width:double.infinity,
      color: Colors.pink,
          ),
    ),


          // Expanded(child: Column(

          // ))
        ],
      ),

      // Center(

      //   child: Text('Body Text',
      //     style: TextStyle(color: Colors.white
      //     ),),
      // ),
      // floatingActionButton: Theme(
      //   data: ThemeData(
      //     accentColor: Colors.red,
      //   ),
      //   child: FloatingActionButton(
      //     child: Icon(Icons.add),
      //   ),
      // ),//
    );
  }
}

class SelfButton extends StatelessWidget{

  SelfButton({this.icon, this.onPressed});
final Function onPressed;
  final IconData icon;
  Widget build(BuildContext context){
    return RawMaterialButton(
      child: Icon(icon),
      onPressed:onPressed,
      shape: CircleBorder(),
      fillColor: Colors.blueGrey,
    );
  }

}