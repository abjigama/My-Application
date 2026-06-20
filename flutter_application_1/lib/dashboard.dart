import 'package:flutter/material.dart';
import 'profile.dart';
import 'consultant.dart';
import 'Mechanic.dart';
import 'electrician.dart';
import 'farming.dart';
import 'event_planner.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  
  void get consultant {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Change overall page background color
      backgroundColor: const Color.fromARGB(255, 30, 101, 137),
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
             tileColor: const Color.fromARGB(255, 117, 156, 223),

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
                leading: Icon(Icons.car_crash_outlined),
             tileColor: const Color.fromARGB(255, 117, 156, 223),
                
                ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EventPlanner()),
              );
            },
            child: Card(
              child: ListTile(title: Text("Event PLanner"), subtitle: Text("Decoration"),
              leading: Icon( Icons.chair),
             tileColor: const Color.fromARGB(255, 117, 156, 223),
              
              ),
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
             tileColor: const Color.fromARGB(255, 117, 156, 223),

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
              leading: Icon(Icons.grass),
             tileColor: const Color.fromARGB(255, 117, 156, 223),

              ),
            ),
          ),
        ],
      ),
    );
  }
}