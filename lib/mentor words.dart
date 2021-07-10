import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MentorWords extends StatefulWidget {
  @override
  _MentorWordsState createState() => _MentorWordsState();
}

class _MentorWordsState extends State<MentorWords> {
  @override
  final _formKey = GlobalKey<FormState>();
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[




            Container(
              decoration: BoxDecoration(
                color: Colors.yellow.withOpacity(0.4),
              ),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    st=value;
                  });
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Add new goals',

                ),
              ),
            ),
            /*FlatButton(
              onPressed:(){if (st.length>0){teams.add(st);
              setState(() {
                st="";
              });}}
              ,
              child: Text(
                '+',
              ),),
          */










            SizedBox(
              height: 2,
            ),
      Flexible(

        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.blueAccent),


          ),
          constraints: BoxConstraints(

            minHeight: 35,
            minWidth: double.infinity,

          ),

          child: Container(

            child: RaisedButton(
              color: Colors.yellow.shade200,
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            Positioned(
                              right: -40.0,
                              top: -40.0,
                              child: InkResponse(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: CircleAvatar(
                                  child: Icon(Icons.close),
                                  backgroundColor: Colors.red,
                                ),
                              ),
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text("Topic Of Discussion ",textAlign: TextAlign.left,),
                                  Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: ''
                                      ),
                                    ),
                                  ),
                                  Text("Discription ",textAlign: TextAlign.left,),
                                  Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: ''
                                      ),
                                    ),
                                    ),
                                  Text("Goals To achieve",textAlign: TextAlign.left,),
                                  Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: ''
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(6.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: ''
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RaisedButton(
                                      child: Text("Add To Task"),
                                      onPressed: () {
                                        if (_formKey.currentState.validate()) {
                                          _formKey.currentState.save();
                                        }
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Text("Mentor Words",textAlign: TextAlign.left,),
            ),
          ),
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