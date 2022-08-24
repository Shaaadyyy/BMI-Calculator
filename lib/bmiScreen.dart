

import 'dart:math';

import 'package:flutter/material.dart';

import 'BmiResultScreen.dart';

class bmiScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _bmiScreenState();

}

class _bmiScreenState extends State<bmiScreen>
{

  bool isMale = true;
  double height = 120;
  int age = 22;
  int weight = 70;

  double roundDouble(double value, int places){
    num mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator'
        ),
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        color: Colors.grey[900],
        child: Column(
          children:
          [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children:
                    [
                      Expanded(

                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage('images/male.png'),
                                    height: 70.0,
                                    width: 80.0,
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Text('MALE', style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.normal,
                                      color: isMale ? Colors.black : Colors.white
                                  )
                                  )
                                ]
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: isMale ? Colors.grey[700] : Colors.grey[800],
                                border: Border.all(color: Colors.cyanAccent, width: 1.5)
                            ),

                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('images/female2.png'),
                                  height: 80.0,
                                  width: 80.0,
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text('FEMALE', style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.normal,
                                    color: !isMale ? Colors.black : Colors.white
                                ),)],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(color: Colors.pink, width: 1.5),
                              color: !isMale ? Colors.grey[700]: Colors.grey[800],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'CM',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),


                        ],
                      ),
                      Slider(value: height,
                          max: 220.0,
                          min: 80.0,
                          onChanged:(val)
                          {
                            height = val;
                          }
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.black, width: 2.0),
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children:
                  [
                    Expanded(

                      child: Container(
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('AGE', style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white
                            ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('${age.round()}', style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white
                            ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  FloatingActionButton(onPressed: (){
                                    age--;
                                  },
                                    heroTag: 'age-',
                                    mini: true,
                                    child: Icon(
                                        Icons.remove
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  FloatingActionButton(onPressed: (){
                                    age++;
                                  },
                                    heroTag: 'age+',
                                    mini: true,
                                    child: Icon(
                                        Icons.add
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[800],
                            border: Border.all(color: Colors.black, width: 1.5)
                        ),

                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('WEIGHT', style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white
                            ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text('${weight.round()}', style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white
                            ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  FloatingActionButton(onPressed: (){
                                    weight--;
                                  },
                                    heroTag: 'weight-',
                                    mini: true,
                                    child: Icon(
                                        Icons.remove
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  FloatingActionButton(onPressed: (){
                                    weight++;
                                  },
                                    heroTag: 'weight+',
                                    mini: true,
                                    child: Icon(
                                        Icons.add
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.black, width: 1.5),
                          color: Colors.grey[800],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ButtonTheme(
                  minWidth: 180.0,
                  height: 40.0,
                  child: RaisedButton(
                    onPressed: ()
                    {
                      double result = weight / pow(height / 100, 2);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> BmiResultScreen(
                            isMale: isMale,
                            height: height.round(),
                            weight: weight,
                            age: age,
                            result: roundDouble(result,2),
                          )
                          )
                      );
                    },
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("CALCULATE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }

}