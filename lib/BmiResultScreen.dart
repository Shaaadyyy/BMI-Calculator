

import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget
{

  late bool isMale;
  late int height;
  late int weight;
  late int age;
  late double result;

  BmiResultScreen({
    required this.isMale,
    required this.height,
    required this.age,
    required this.weight,
    required this.result
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text(
              'BMI Result'
          ),
          backgroundColor: Colors.grey[900],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    'BMI RESULT',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(
                      height: 80.0
                  ),
                  Text(
                    'Gender: ${isMale ? 'Male' : 'Female'}',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(
                      height: 15.0
                  ),
                  Text(
                    'Height: ${height}',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(
                      height: 15.0
                  ),
                  Text(
                    'weight:  ${weight}',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(
                      height: 15.0
                  ),
                  Text(
                    'age:  ${age}',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(
                      height: 15.0
                  ),
                  Text(
                    'Result:  ${result}',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),


                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.black, width: 2.0),
                color: Colors.grey[800],
              ),
              width: double.infinity,
            ),

          ),
        )
    );
  }

}