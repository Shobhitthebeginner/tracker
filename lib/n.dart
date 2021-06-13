import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Materate"),
          actions: [
            Theme(
              data: Theme.of(context).copyWith(
                  textTheme: TextTheme().apply(bodyColor: Colors.black),
                  dividerColor: Colors.white,
                  iconTheme: IconThemeData(color: Colors.white)),
              child: PopupMenuButton<int>(
                color: Colors.black,
                itemBuilder: (context) => [
                  PopupMenuItem<int>(value: 0, child: Text("Setting")),
                  PopupMenuItem<int>(
                      value: 1, child: Text("Privacy Policy page")),
                  PopupMenuDivider(),
                  PopupMenuItem<int>(
                      value: 2,
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text("Logout")
                        ],
                      )),
                ],
                onSelected: (item) => SelectedItem(context, item),
              ),
            ),
          ],
        ),
        body: Container()
    );
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
}