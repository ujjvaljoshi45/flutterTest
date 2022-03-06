 
import 'package:flutter/cupertino.dart';

import 'Student.dart';

class MyStudentView extends StatelessWidget {
  static const mFontSize = 25.0;
  static const mPadding = 10.0;
  final Student student;

  const MyStudentView({required this.student});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(mPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            student.name,
            style: const TextStyle(
                fontSize: mFontSize, fontWeight: FontWeight.bold),
          ),
          Text(
            student.age.toString(),
            style: const TextStyle(
                fontSize: mFontSize, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
