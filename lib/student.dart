import 'package:basic_app/login.dart';
import 'package:flutter/material.dart';

class Student extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Student Landing Page",
       theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: StudInterface(),
    );
    throw UnimplementedError();
  }
}

class StudInterface extends StatefulWidget {
  const StudInterface({super.key});

  @override
  State<StudInterface> createState() => _StudInterfaceState();
}

class _StudInterfaceState extends State<StudInterface> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
          appBar: AppBar(
            title: Row(children: <Widget>[
                IconButton(
                  onPressed: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyPage()))
                  }, 
                  icon: Icon(Icons.arrow_circle_left_outlined)
                ),
               Text("Student Landing Page"),
            ],)
          ),
          body: Center(child: Text("Welcome Student!")),
        );
  }
}