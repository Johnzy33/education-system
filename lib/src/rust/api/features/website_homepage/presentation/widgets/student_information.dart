import 'package:flutter/material.dart';

class StudentInformation extends StatelessWidget {
  const StudentInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.all(20.0),
      child:  const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Text',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}



