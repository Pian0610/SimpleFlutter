import 'package:basic_app/login.dart';
import 'package:flutter/material.dart';

class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Admin Landing Page",
       theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: AdminInterface(),
    );
    throw UnimplementedError();
  }
}

class AdminInterface extends StatefulWidget {
  const AdminInterface({super.key});

  @override
  State<AdminInterface> createState() => _AdminInterfaceState();
}

class _AdminInterfaceState extends State<AdminInterface> {
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
               Text("Admin Landing Page"),
            ],)
          ),
          body: Center(child: Text("Welcome Admin!")),
        );
  }
}