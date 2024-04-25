
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  int backgroundColor = 0xff0a0f1e;
  int frontColor = 0xff1C2037;
  final int age ;
  final int height;
  final int weight;
  final bool isMale;
  final int result;

  BmiResultScreen({required this.age,required this.isMale,required this.result,required this.height,required this.weight});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(backgroundColor),
        centerTitle: true,
        title: Text(
            'BMI CALCULATOR'
        ),
      ),
      body:
      Container(
          padding: EdgeInsets.all(20.0),
          color: Color(backgroundColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
               image: AssetImage('assets/images/bmi.png'),
                width: 150.0,
                height: 150.0,
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
               'GENDER : ${isMale?'MALE':'Female'}',
               style: TextStyle(
                 fontSize: 25.0,
                 color: Colors.white
               ),
             ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.blue,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'HEIGHT : $height',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.blue,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'AGE : $age',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.blue,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'WEIGHT : $weight',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.blue,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'RESULT : $result',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white
                ),
              ),




            ],
          )
      ),
    );

  }
}
