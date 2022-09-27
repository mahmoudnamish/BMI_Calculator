import 'package:flutter/material.dart';

class BMIResultScrean extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

  const BMIResultScrean({required this.age,required this.isMale,required this.result});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left
          ),
        ),
        title: Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Gender : ${isMale ?"male" : "female"}',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
          ),
           Text('Result : $result',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
          ),
           Text('Age : $age',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
          ),
        ]),
      ),
    );
  }
}