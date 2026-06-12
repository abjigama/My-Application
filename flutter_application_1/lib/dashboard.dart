import 'package:flutter/material.dart';
import 'profile.dart';
import 'consultant.dart';
import 'Mechanic.dart';
import 'electrician.dart';
import 'farming.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  
  void get consultant => null;

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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Consultant()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text("Consultant"),
                subtitle: Text("paediatrics"),
                leading: Icon(Icons.local_hospital),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mechanic()),
              );
            },
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Electrician()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text("Electrician"),
                subtitle: Text("House Wearing"),
                leading: Icon(Icons.lightbulb),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Farming()),
              );
            },
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