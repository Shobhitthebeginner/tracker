import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyTasks extends StatefulWidget {
  @override
  _MyTasksState createState() => _MyTasksState();
}

class _MyTasksState extends State<MyTasks> {
  @override
  String st="";
  var vis=false;
  List visi=[false,false];
  List visi2=[false,false];
  List teams = [
    { 'name':'StudyGoal',
      'subgoal': [
        {'subgoalname':'Quadratic',
          'Task':[
              "Exercise 1",
              "Exercise 2"

          ],},

        {'subgoalname':'Algebra',
      'Task':[
        "Exercise 1",
        "Exercise 2"
      ]
    },
      ],
    },
    { 'name':'Health Goal',
      'subgoal': [
        {'subgoalname':'Quadratic',
          'Task':[
            "Exercise 1",
            "Exercise 2"
          ]
        },
      ],
    }
  ];

  final myController = TextEditingController ();


  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.all(4),
        child: Column(

          children:<Widget>[




                TextField(
                  onChanged: (value){
                    setState(() {
                      st=value;
                    });
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Add new goals'
                  ),
                ),
                FlatButton(
                  onPressed:(){if (st.length>0){teams.add(st);
                  setState(() {
                    st="";
                  });}}
                  ,
                  child: Text(
                    '+',
                  ),),











            SizedBox(
              height: 1,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Mentor Words'
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                    ),
                    child: Column(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () => {
                            setState((){
                              visi[index]=!visi[index];

                            }),

                          },
                          child:Text("${teams[index]['name']}",
                          textAlign: TextAlign.left,),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                          ),
                          child: Visibility(
                              visible: visi[index],
                              child:
                              ListView.builder(
                                itemCount: 2,
                                  shrinkWrap: true,
                                  itemBuilder:(BuildContext context, int inde){
                                    return Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blueAccent),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.blueAccent),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.blueAccent),
                                          ),
                                          child: Column(
                                            children: <Widget>[
                                              FlatButton(onPressed: ()=>{
                                                setState((){
                                                  visi2[inde]=!visi2[inde];

                                                }),
                                              },
                                            child: Text("${teams[index]['subgoal'][inde]['subgoalname']}",
                                            textAlign: TextAlign.left,),),
                                              Visibility(
                                                visible:visi2[inde],
                                                child: ListView.builder(
                                                  itemCount: 2,
                                                    shrinkWrap: true,

                                                    itemBuilder:(BuildContext context, int indexx){
                                                      return Padding(
                                                        padding: EdgeInsets.all(4),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Text("${teams[index]['subgoal'][index]['Task'][indexx]}"),
                                                          ],
                                                        ),
                                                      );
                                                    }
                                                ),
                                              )




                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                              )),
                        ),

                      ],
                    ),
                  );
                }
          ),
            ),
        ],
        ),
      ),

    );
  }
}