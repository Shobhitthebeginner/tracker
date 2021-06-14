import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
class ScheduleYourMentor extends StatefulWidget {
  @override
  _ScheduleYourMentorState createState() => _ScheduleYourMentorState();
}

class _ScheduleYourMentorState extends State<ScheduleYourMentor> {
  String _chosenValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Materate'),
        backgroundColor: Colors.blueAccent,

        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: Text('Logout',
              style: TextStyle(
                color: Colors.white,
              ),),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[


        Row(
          children: <Widget>[
            Expanded(
                flex: 8,
                child: Container(
                  width: 500,
                  height: 50,
                  child: Center(
                    child: Text(
                      'CALENDER',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(0),
                  ),
                )
            ),
            Expanded(
                flex: 1,
                child:Container(
                    height: 50,
                    width: 64,
                    child: PopupMenuButton<int>(
                      color: Colors.white,
                      itemBuilder: (context) => [

                        PopupMenuItem<int>(

                            value: 0,
                            child:Row(
                              children: [
                                Icon(
                                  Icons.schedule,
                                  color: Colors.blueAccent,
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                Text("Schedule Your Mentor")
                              ],
                            )


                        ),
                        PopupMenuDivider(

                        ),
                        PopupMenuItem<int>(
                            value: 1, child:Row(
                          children: [
                            Icon(
                              Icons.check,
                              color: Colors.blueAccent,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text("My Tasks")
                          ],
                        )),
                        PopupMenuDivider(

                        ),
                        PopupMenuItem<int>(value: 2, child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.blueAccent,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text("My Calender"),
                          ],
                        )),
                        PopupMenuDivider(

                        ),
                        PopupMenuItem<int>(value: 2, child:Row(
                          children: [
                            Icon(
                              Icons.schedule,
                              color: Colors.blueAccent,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text("My Progress")
                          ],
                        )),
                        PopupMenuDivider(

                        ),
                        PopupMenuItem<int>(value: 2, child:Row(
                          children: [
                            Icon(
                              Icons.bar_chart,
                              color: Colors.blueAccent,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text("My badges"),
                          ],
                        )),


                      ],
                      onSelected: (item) => SelectedItem(context, item),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(0),
                    )
                ),


            ),

          ],

        ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      Text('Select Your Mentor :'),
                      Expanded(child: SizedBox(
                      width: 10,
                      ),
                      ),
                      DropdownButton<String>(
                        focusColor:Colors.white,
                        value: _chosenValue,
                        //elevation: 5,
                        style: TextStyle(color: Colors.white),
                        iconEnabledColor:Colors.black,
                        items: <String>[
                          'X',
                          'Y',
                          'Z',

                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,style:TextStyle(color:Colors.black),),
                          );
                        }).toList(),
                        hint:Text(
                          "                                                  ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        onChanged: (String value) {
                          setState(() {
                            _chosenValue = value;
                          });
                        },
                      ),
                    ],
                  ) ,
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      Text('Day :'),
                  Expanded(
                    flex: 4,
                    child: SizedBox(
                    width: 10,
                  ),),

                    ],
                  ) ,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      Text('Time :'),
                      Expanded(
                        flex:4,
                        child: SizedBox(
                        width: 10,
                      ),),
                      DropdownButton<String>(
                        focusColor:Colors.white,
                        value: _chosenValue,
                        //elevation: 5,
                        style: TextStyle(color: Colors.white),
                        iconEnabledColor:Colors.black,
                        items: <String>[
                          'Android',
                          'IOS',
                          'Flutter',
                          'Node',
                          'Java',
                          'Python',
                          'PHP',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,style:TextStyle(color:Colors.black),),
                          );
                        }).toList(),
                        hint:Text(
                          "Please choose a langauage",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        onChanged: (String value) {
                          setState(() {
                            _chosenValue = value;
                          });
                        },
                      ),
                    ],
                  ) ,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      Text('Topics to talk about :'),
                      Expanded(
                        child: SizedBox(
                        width: 10,
                      ),),
                      DropdownButton<String>(
                        focusColor:Colors.white,
                        value: _chosenValue,
                        //elevation: 5,
                        style: TextStyle(color: Colors.white),
                        iconEnabledColor:Colors.black,
                        items: <String>[
                          'Android',
                          'IOS',
                          'Flutter',
                          'Node',
                          'Java',
                          'Python',
                          'PHP',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value,style:TextStyle(color:Colors.black),),
                          );
                        }).toList(),
                        hint:Text(
                          "Please choose a langauage",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        onChanged: (String value) {
                          setState(() {
                            _chosenValue = value;
                          });
                        },
                      ),
                    ],
                  ) ,
                ),
              ],
            ),
          )

      ],

      ),

    );
  }
}
void SelectedItem(BuildContext context, item) {
  switch (item) {
    case 0:
    //Navigator.of(context)
    //.push(MaterialPageRoute(builder: (context) => SettingPage()));
      break;
    case 1:
      print("Privacy Clicked");
      break;
    case 2:
      print("User Logged out");
      //Navigator.of(context).pushAndRemoveUntil(
      //  MaterialPageRoute(builder: (context) => LoginPage()),
      //    (route) => false);
      break;
  }
}