import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class SelectTime extends StatefulWidget {
  @override
  _SelectTimeState createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {
  String _date = "Not set";
  String _time = "Not set";

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(100),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.purpleAccent.withOpacity(0.5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(bottom: 100),
                child: Text("Select Your Time"),
              ),

              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("English Time"),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            elevation: 4.0,
                            onPressed: () {
                              DatePicker.showDatePicker(context,
                                  theme: DatePickerTheme(
                                    containerHeight: 210.0,
                                  ),
                                  showTitleActions: true,
                                  minTime: DateTime(2021, 1, 1),
                                  maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
                                    print('confirm $date');
                                    _date = '${date.year} - ${date.month} - ${date.day}';
                                    setState(() {});
                                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 30.0,
                              width: 150,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.date_range,
                                              size: 14.0,
                                              color: Colors.teal,
                                            ),
                                            Text(
                                              " $_date",
                                              style: TextStyle(
                                                  color: Colors.teal,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.0),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                            color: Colors.white,
                          ),


                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("English Time"),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            elevation: 4.0,
                            onPressed: () {
                              DatePicker.showDatePicker(context,
                                  theme: DatePickerTheme(
                                    containerHeight: 210.0,
                                  ),
                                  showTitleActions: true,
                                  minTime: DateTime(2021, 1, 1),
                                  maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
                                    print('confirm $date');
                                    _date = '${date.year} - ${date.month} - ${date.day}';
                                    setState(() {});
                                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 30.0,
                              width: 150,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.date_range,
                                              size: 14.0,
                                              color: Colors.teal,
                                            ),
                                            Text(
                                              " $_date",
                                              style: TextStyle(
                                                  color: Colors.teal,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.0),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                            color: Colors.white,
                          ),


                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("English Time"),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            elevation: 4.0,
                            onPressed: () {
                              DatePicker.showDatePicker(context,
                                  theme: DatePickerTheme(
                                    containerHeight: 210.0,
                                  ),
                                  showTitleActions: true,
                                  minTime: DateTime(2021, 1, 1),
                                  maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
                                    print('confirm $date');
                                    _date = '${date.year} - ${date.month} - ${date.day}';
                                    setState(() {});
                                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 30.0,
                              width: 150,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.date_range,
                                              size: 14.0,
                                              color: Colors.teal,
                                            ),
                                            Text(
                                              " $_date",
                                              style: TextStyle(
                                                  color: Colors.teal,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.0),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                            color: Colors.white,
                          ),


                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
