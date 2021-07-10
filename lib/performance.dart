import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;

class ChartsDemo extends StatefulWidget {
  //
  ChartsDemo() : super();

  final String title = "Charts Demo";

  @override
  ChartsDemoState createState() => ChartsDemoState();
}

class ChartsDemoState extends State<ChartsDemo> {
  //
  List<charts.Series> seriesList;

  static List<charts.Series<Sales, String>> _createRandomData() {
    final random = Random();

    final desktopSalesData = [
      Sales('Monday', random.nextInt(100)),
      Sales('Tuesday', random.nextInt(100)),
      Sales('Wednesday', random.nextInt(100)),
      Sales('Thursday', random.nextInt(100)),
      Sales('Friday', random.nextInt(100)),
      Sales('Saturday', random.nextInt(100)),
      Sales('Sunday', random.nextInt(100)),

    ];



    return [
      charts.Series<Sales, String>(
        id: 'Sales',
        domainFn: (Sales sales, _) => sales.year,

        measureFn: (Sales sales, _) => sales.sales,
        data: desktopSalesData,
        fillColorFn: (Sales sales, _) {
          return charts.MaterialPalette.blue.shadeDefault;
        },
      ),


    ];
  }

  barChart() {
    return charts.BarChart(
      seriesList,
      animate: true,
      vertical: true,
      domainAxis: charts.OrdinalAxisSpec(
        renderSpec: charts.SmallTickRendererSpec(labelRotation: 0),
      ),
      behaviors: [

        new charts.ChartTitle('Progress over the week',
            behaviorPosition: charts.BehaviorPosition.bottom,
            titleOutsideJustification:
            charts.OutsideJustification.middleDrawArea),


      ],

    );
  }

  @override
  void initState() {
    super.initState();
    seriesList = _createRandomData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progress"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded
            (flex:2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/ico.jpg',height: 100,),
                Container(
                 
                    height:100,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellow.withOpacity(0.5)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[Text('Keep it up Rohan Your 1st Week was Superb'),
                    SizedBox(height: 20,),
                    Center(child: Text('You completed 92% of the total tasks assigned to you'))],),
                    
                ),
      ],
    ),
    ),
          Expanded(
            flex:4,
            child: Container(
              
            child: barChart(),
        ),
          ),
          Expanded(
              flex:4,
              child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.pinkAccent.withOpacity(0.4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Center(child: Text("A peice of advice from Genie")),
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,

                    ),
                  ),
                  Row(
                    
                    children:<Widget>[
                      Image.asset('images/ico.jpg',width: 140 ,height: 50,),
                      Text("Learn From Mistakes"),
                    ]

                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(

                      children:<Widget>[
                        Image.asset('images/ico.jpg',width: 140,height: 50,),
                        Text("Better Focus"),
                      ]

                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(

                      children:<Widget>[
                        Image.asset('images/ico.jpg',width: 140,height: 50,),
                        Text("Daily Practice"),
                      ]

                  )
                ],
              ),
            ),
          ))
    ],
      ),
    );
  }
}

class Sales {
  final String year;
  final int sales;

  Sales(this.year, this.sales);
}