import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override


    // Stroing all the dates till the last date
    // since we have found the last date using generate
    var listOfDates = new List<int>.generate(daysInMonth(DateTime(2020, 7)), (i) => i + 1);



// this returns the last date of the month using DateTime

  Widget build(BuildContext context) {
    print(listOfDates);
    return Scaffold(
      body: ListView.builder(
          itemCount: 31,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: Icon(Icons.list),
                trailing: Text("Add Your Task",
                  style: TextStyle(
                      color: Colors.green, fontSize: 15),),
                title: Text(" Day $index")
            );
          }
      ),
    );
  }
}
int daysInMonth(DateTime date){
  var firstDayThisMonth = new DateTime(date.year, date.month, date.day);
  var firstDayNextMonth = new DateTime(firstDayThisMonth.year, firstDayThisMonth.month + 1, firstDayThisMonth.day);
  return firstDayNextMonth.difference(firstDayThisMonth).inDays;
}