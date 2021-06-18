import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  )


              )

            ],

          ),

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