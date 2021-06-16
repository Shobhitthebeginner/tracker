import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:math';

class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    var currDt = DateTime.now();
    var listOfDay = new List.generate(
        daysInMonth(currDt),
            (i) =>
        "${DateFormat('EEEE').format(currDt.add(Duration(days: i - 1)))}");
    var listOfDates = new List.generate(
        daysInMonth(currDt),
            (i) =>
        i+1);
    final _random = Random();

    print(listOfDates);

    return Scaffold(
      body: ListView.builder(
          itemCount: listOfDates.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(

              padding: EdgeInsets.all(10),
              child: Container(
                height: 40,
                decoration: BoxDecoration(

                  color: Colors.primaries[_random.nextInt(Colors.primaries.length)]
                  [_random.nextInt(9) * 100],
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(150.0),
                    bottomLeft: Radius.circular(150.0),
                  ),


                ),
                child: Row(

                  children: [
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          Text("${listOfDates[index]}",textAlign: TextAlign.left),
                          Text("${listOfDay[index]}",textAlign: TextAlign.left),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: FlatButton(
                        onPressed: (){},
                        child: Text(
                          "Add Your Task",
                          textAlign: TextAlign.center,

                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

int daysInMonth(DateTime date) {
  var firstDayThisMonth = new DateTime(date.year, date.month, date.day);
  var firstDayNextMonth = new DateTime(firstDayThisMonth.year,
      firstDayThisMonth.month + 1, firstDayThisMonth.day);
  return firstDayNextMonth.difference(firstDayThisMonth).inDays;
}