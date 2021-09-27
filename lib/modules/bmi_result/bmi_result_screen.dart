import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {


  final int? result;
  final bool? isMale;
  final int? age;

    BmiResult({
   required this.result,
   required this.age,
   required this.isMale,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your BMI ',
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[300],
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Body mass index ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 45,
                ),
              ),
              const SizedBox(height: 20,),
              const Text(
                  ' measure of body fat ',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20,),
              Text(
                'Gender ||  ${isMale! ? 'Male' : 'Female'}',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'BMI ||  $result',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Age || $age',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
