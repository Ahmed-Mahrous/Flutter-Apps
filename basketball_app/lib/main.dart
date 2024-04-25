import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _PointsCounterState createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(child: Text('Basketball App',style: TextStyle(color: Colors.black),)),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SizedBox(height: 50),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
        [
            Column(
              children: [
                Text('Team A',style: TextStyle(fontSize: 50),),Text('$teamApoints',style: TextStyle(fontSize: 100)),
                ElevatedButton(onPressed: (){
                  teamApoints++;
                  setState(() {

                  });
                }, child: Text('Add 1 Point',style: TextStyle(fontSize: 23, color: Colors.black)),style: ElevatedButton.styleFrom(primary: Colors.amber, minimumSize: Size(60, 60)),),
                Spacer(flex: 1,),
                ElevatedButton(onPressed: (){teamApoints +=2;
                setState(() {

                });}, child: Text('Add 2 Point',style: TextStyle(fontSize: 23, color: Colors.black)),style: ElevatedButton.styleFrom(primary: Colors.amber, minimumSize: Size(60, 60)),),
                Spacer(flex: 1,),
                ElevatedButton(onPressed: (){teamApoints +=3;
                setState(() {

                });}, child: Text('Add 3 Point',style: TextStyle(fontSize: 23, color: Colors.black)),style: ElevatedButton.styleFrom(primary: Colors.amber, minimumSize: Size(60, 60)),),

        ],),
            VerticalDivider(width: 30,
            thickness: 1,
            color: Colors.amber,),
            Column(
              children: [
                Text('Team B',style: TextStyle(fontSize: 50)),Text('$teamBpoints',style: TextStyle(fontSize: 100)),
                ElevatedButton(onPressed: (){
                  teamBpoints++;
                  setState(() {

                  });
                }, child: Text('Add 1 Point',style: TextStyle(fontSize: 23, color: Colors.black)),style: ElevatedButton.styleFrom(primary: Colors.amber, minimumSize: Size(60, 60)),),
                Spacer(flex: 1,),
                ElevatedButton(onPressed: (){ teamBpoints+=2;
                setState(() {

                });}, child: Text('Add 2 Point',style: TextStyle(fontSize: 23, color: Colors.black)),style: ElevatedButton.styleFrom(primary: Colors.amber, minimumSize: Size(60, 60)),),
                Spacer(flex: 1,),
                ElevatedButton(onPressed: (){
                  teamBpoints+=3;
                  setState(() {

                  });
                }, child: Text('Add 3 Point',style: TextStyle(fontSize: 23, color: Colors.black)),style: ElevatedButton.styleFrom(primary: Colors.amber, minimumSize: Size(60, 60)),),

              ],)
        ],
            ),
          ),
            SizedBox(height: 50),
            ElevatedButton(onPressed: (){
              teamApoints = 0;
              teamBpoints = 0;
              setState(() {

              });
            }, child: Text('Reset',style: TextStyle(fontSize: 23, color: Colors.black)),style: ElevatedButton.styleFrom(primary: Colors.amber, minimumSize: Size(60, 60)),),
            SizedBox(height: 50),],
        ),
      ),

    ),
      );
  }
}
