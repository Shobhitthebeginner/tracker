import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class Grades extends StatefulWidget {
  @override
  _GradesState createState() => _GradesState();
}

class _GradesState extends State<Grades> {
  @override
  var initialRatin=42;
  final va=RatingBar.builder(
    initialRating: 42,
    minRating: 1,
    direction: Axis.horizontal,
    allowHalfRating: false,
    itemSize: 70,
    itemCount: 40,
    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
    itemBuilder: (context, _) => Container(
      decoration: BoxDecoration(
        color: Colors.yellowAccent,
      ),
      child: Column(
        children: <Widget>[
          Image.asset('images/star.png',width: 60,height: 60),
        ],
      ),
    ),

      onRatingUpdate: (rating) {

      },
  );

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.yellowAccent.withOpacity(0.4),
          ),
          child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Rohan You have achieved $initialRatin awards',
              ),
            ),
            Expanded(

              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                  ),
                  width: 400,
                  child: va,
                ),
              ),

          ),
      ],
      ),
        ),
    );
  }
}
