import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Alokmaurya extends StatefulWidget {
  const Alokmaurya({super.key});

  @override
  State<Alokmaurya> createState() => _AlokmauryaState();
}

class _AlokmauryaState extends State<Alokmaurya> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 29, 28, 28),
        appBar: AppBar(
          title: Text(
            'Xcellence PVT LTD Company,Lucknow',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 29, 28, 28),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/image/person5.jpeg"),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alok Maurya',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text('Developer', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 170,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color.fromARGB(255, 83, 83, 83),
                        Colors.black,
                      ],
                    ),
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 206, 27),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "How's the ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Mood ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 255, 206, 27),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Today",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('😀', style: TextStyle(fontSize: 40)),
                            Text('😇', style: TextStyle(fontSize: 40)),
                            Text('😑', style: TextStyle(fontSize: 40)),
                            Text('😔', style: TextStyle(fontSize: 40)),
                            Text('😡', style: TextStyle(fontSize: 40)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Divider(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.speed,
                      color: const Color.fromARGB(255, 255, 206, 27),
                      size: 35,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Team Mood',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        height: 1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ), 
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color.fromARGB(255, 83, 83, 83),
                        Colors.black,
                      ],
                    ),
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 206, 27),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "The Team is feeling good ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "today",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Text('😇',style: TextStyle(fontSize: 50),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('😇 Moodalytics',style: TextStyle(fontSize: 25,color: Colors.white),),
                    Text('(Trend chart on Mood)',style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
              Container(
                child: SfCartesianChart(
                  primaryXAxis:CategoryAxis(),
                  series: <LineSeries<SalesData, String>>[
                    LineSeries<SalesData, String>(
                      dataSource: <SalesData>[
                        SalesData('3/9/2022',4),
                        SalesData('6/9/2022',5),
                        SalesData('7/9/2022',1),
                        SalesData('8/9/2022',5),
                        SalesData('9/9/2022',3),
                        SalesData('10/9/2022',4),
                        SalesData('12/9/2022',4),
                        SalesData('13/9/2022',3),
                        SalesData('14/9/2022',5),
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales,
                    )
                  ]
          
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
