import 'package:basic_app/api/auth.dart';
import 'package:basic_app/login.dart';
import 'package:flutter/material.dart';

class Staff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Staff Landing Page",
       theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: StaffInterface(),
    );
    throw UnimplementedError();
  }
}

class StaffInterface extends StatefulWidget {
  const StaffInterface({super.key});

  @override
  State<StaffInterface> createState() => _StaffInterfaceState();
}

class _StaffInterfaceState extends State<StaffInterface> {
  Authentication auth = new Authentication();
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
               Text("Staff Landing Page"),
            ],)
          ),
          body: Center(child: Text('Welcome to Staff Landing Page!')),
        );
  }
}
