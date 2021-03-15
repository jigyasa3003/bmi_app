
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.text});

  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: 100.0,
          ),
          SizedBox(
            height: 18.0,
            width: 10.0,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 18.0, color: Colors.amber),
          ),
        ],
      ),
    );
  }
}

class Reuseable extends StatelessWidget {
  Reuseable({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}