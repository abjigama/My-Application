import 'package:flutter/material.dart';
import 'profile.dart';
import 'consultant_page.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  
  void get consultant_page => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: null,
            child: Card(
              child: ListTile(
                title: Text("Consultant"),
                subtitle: Text("paediatrics"),
                leading: Icon(Icons.local_hospital),
              ),
            ),
          ),
          GestureDetector(
            onTap: null,
            child: Card(
              child: ListTile(
                title: Text("Mechanic"), subtitle: Text("Automobile Repair"),
                leading: Icon(Icons.car_crash_outlined),),
            ),
          ),
          GestureDetector(
            onTap: null,
            child: Card(
              child: ListTile(title: Text("Event PLanner"), subtitle: Text("Decoration"),
              leading: Icon( Icons.chair),),
            ),
          ),
          GestureDetector(
            onTap: null,
            child: Card(
              child: ListTile(
                title: Text("Electrician"),
                subtitle: Text("House Wearing"),
                leading: Icon(Icons.lightbulb),
              ),
            ),
          ),
          GestureDetector(
            onTap: null,
            child: Card(
              child: ListTile(title: Text("Farming"), subtitle: Text("Rearing"),
              leading: Icon(Icons.grass)
              ),
            ),
          ),
        ],
      ),
    );
  }
}