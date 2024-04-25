

import 'dart:math';

import 'package:flutter/material.dart';

import '../bmi_result/BmiResultScreen.dart';

class BmiScreen extends StatefulWidget {

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double height = 180;
  int weight = 50;
  int age = 14;
  bool isMale = true;
  int backgroundColor = 0xff0a0f1e;
  int frontColor = 0xff1C2037;
  int buttonColor = 0xffe6144b;

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
        color: Color(backgroundColor),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('assets/images/male.png'),width: 70.0,height: 70.0,),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  color: isMale ? Colors.white:Colors.grey,
                                  fontSize: 25.0
                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: isMale ? Colors.blue:Color(frontColor),),


                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('assets/images/female.png'),height: 70.0,width: 70.0,),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  color: isMale ? Colors.grey:Colors.white,
                                  fontSize: 25.0
                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: isMale ? Color(frontColor):Colors.blue,),


                        ),
                      ),
                    ),
                  ],
                ),
              )
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Color(frontColor),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25.0
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(width: 5.0,),
                          Text(
                            'cm',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20.0
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15.0,),
                      Slider(value: height,max: 220,min: 50, onChanged: (value){
                        setState(() {
                          height = value;
                        });
                        print(value.round());
                      })

                    ],
                  ),
                ),
              )
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Color(frontColor),),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 25.0
                              ),
                            ),
                            SizedBox(height: 15.0,),
                            Text(
                              '$age',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                }, child: Icon(Icons.remove),mini: true,),
                                SizedBox(width: 15.0,),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                }, child: Icon(Icons.add),mini: true,)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                        child:
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Color(frontColor),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 25.0
                            ),
                          ),
                          SizedBox(height: 15.0,),
                          Text(
                            '$weight',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              }, child: Icon(Icons.remove),mini: true,),
                              SizedBox(width: 15.0,),
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              }, child: Icon(Icons.add),mini: true,)
                            ],
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              )
            ),
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: 55.0,
              child: MaterialButton(
                onPressed: () {
                  double result = weight / pow(height/100,2);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BmiResultScreen(age:age,isMale:isMale,result:result.round(),weight: weight,height: height.round(),),));

                },
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
