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
    List colors = [Colors.deepPurpleAccent, Colors.pinkAccent, Colors.green,Colors.lightBlueAccent,Colors.red,Colors.greenAccent,
      Colors.purple, Colors.pinkAccent, Colors.green,Colors.lightBlueAccent,Colors.red,Colors.greenAccent,
      Colors.purple, Colors.pinkAccent, Colors.green,Colors.lightBlueAccent,Colors.red,Colors.greenAccent,
      Colors.purple, Colors.pinkAccent, Colors.green,Colors.lightBlueAccent,Colors.red,Colors.greenAccent,
      Colors.purple, Colors.pinkAccent, Colors.green,Colors.lightBlueAccent,Colors.red,Colors.greenAccent];
    Random random = new Random();

    int index = 0;

    void changeIndex() {
      setState(() => index = random.nextInt(3));
    }

    print(listOfDates);

    return Scaffold(
      body: ListView.builder(
          itemCount: listOfDates.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(

              padding: EdgeInsets.all(10),
              child: Row(

                children: [

                    Expanded(
                      flex: 3,
                      child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: colors[index],
                 // color: Colors.primaries[_random.nextInt(Colors.primaries.length)]
                  //[_random.nextInt(9) * 100],
                  //border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(150.0),
                      bottomLeft: Radius.circular(150.0),
                  ),


                ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${listOfDates[index]}",textAlign: TextAlign.center),
                            Text("${listOfDay[index]}",textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 14,

                      child: Container(

                      height: 50,
                      decoration: BoxDecoration(
                        color: colors[index].withOpacity(0.5),

            //color: Colors.primaries[_random.nextInt(Colors.primaries.length)]
            //[_random.nextInt(9) * 100],

            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),


            ),
                        child: FlatButton(
                          onPressed: (){},
                          child: Container(
                            height: 25,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[Text(
                                "Add Your Task",
                                textAlign: TextAlign.center,

                                style: TextStyle(color: Colors.black, fontSize: 15),
                              ),
                            ],
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
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