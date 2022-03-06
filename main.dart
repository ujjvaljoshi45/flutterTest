 
import 'package:flutter/material.dart';
import 'package:demo_flutter_app/Student.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Student.dart';
import 'StudentView.dart';

void main() {
  const homeScreen = MyHomeScreen();
  runApp(const MaterialApp(
    home: homeScreen,
  ));
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => MyHomeScreenState();
}

class MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Student> studentDataList = [
      Student("Mardin Kamble", 19),
      Student("Tanishq Gavande", 19),
      Student("Nivedita Chowdhary", 19),
      Student("Deevya Beehary", 22),
      Student("Gaurav ", 24),
      Student("Gunjan Bhatt", 19),
      Student("Riya", 22),
      Student("Jayram Nanami", 19),
      Student("Varshit Bappodi", 19),
      Student("Sanket Singh", 19),
      Student("Nirendra Patel", 19),
      Student("Neha Arasgonda", 20),
      Student("Surabhi Sharma", 19),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[400],
        title: const Text("M K Productions"),
      ),
      body: ListView.builder(
        itemCount: studentDataList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              renderToast(studentDataList[index]);
            },
            title: MyStudentView(student: studentDataList[index]),
          );
        },
      ),
    );
  }

  void renderToast(student) {
    Fluttertoast.showToast(
      msg: "Name : " + student.name + " Age : " + student.age.toString(),
      toastLength: Toast.LENGTH_SHORT,
      textColor: Colors.white,
    );
  }
}
// AlertDialog(
//   title: const Text("Add Student below"),
//   content: TextFormField(
//     decoration: const InputDecoration(
//       border: UnderlineInputBorder(),
//       label: Text("Student Name"),
//     ),
//   ),
// );
// Fluttertoast.showToast(
//     msg: "I got clicked",
//     toastLength: Toast.LENGTH_SHORT,
//     textColor: Colors.white,
//     fontSize: 16.0,
//     gravity: ToastGravity.CENTER);
