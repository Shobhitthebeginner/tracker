import 'package:flutter/material.dart';
class MyTasks extends StatefulWidget {
  @override
  _MyTasksState createState() => _MyTasksState();
}

class _MyTasksState extends State<MyTasks> {
  @override
  var vis=false;
  List visi=[false,false];
  List teams = [
    { 'name':'StudyGoal',
      'subgoal': [
        {'subgoalname':'Quadratic',
          'Task':[
            {
              'Task1':"Exercise 1",
            },
            {
              'Task2':"Exercise 2",
            }
          ],},

        {'subgoalname':'Algebra',
      'Task':[
        {
          'Task1':"Exercise 1",
        },
        {
          'Task2':"Exercise 2",
        }
      ]
    },
      ],
    },
    { 'name':'Health Goal',
      'subgoal': [
        {'subgoalname':'Quadratic',
          'Task':[
            {
              'Task1':"1 degree",
            },
            {
              'Task2':"2 degree",
            }
          ]
        },
      ],
    }
  ];

  final myController = TextEditingController ();


  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: EdgeInsets.all(3),
              child: Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () => {
                      setState((){
                        visi[index]=!visi[index];

                      }),

                    },
                    child:Text("${teams[index]['name']}"),
                  ),
                  Visibility(
                      visible: visi[index],
                      child:
                      ListView.builder(
                        itemCount: 2,
                          shrinkWrap: true,
                          itemBuilder:(BuildContext context, int inde){
                            return Padding(
                              padding: EdgeInsets.all(3),
                              child: Column(
                                children: <Widget>[
                                  RaisedButton(
                                      child: Text("${teams[index]['subgoal'][inde]['subgoalname']}")),
                                ],
                              ),
                            );
                          }
                      )),

                ],
              ),
            );
          }
      ),

    );
  }
}