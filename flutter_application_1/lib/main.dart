

import 'package:flutter/material.dart';
import 'consultant_page.dart';
import 'Event_planner.dart';
import 'Electrician.dart';
import 'farming.dart';
import 'Mechanic.dart';
import 'profile.dart';


void main() {
  runApp(
    MaterialApp(
      home: ProFinder()
    ),
  );
}
class ProFinder extends StatelessWidget{
  const ProFinder({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text("ProFinder"),
        actions: [
          GestureDetector(onTap:(){
            Navigator.push(context,MaterialPageRoute(builder: (context) => Profile()));
          },
        child: Icon(Icons.person))],
         centerTitle: true, 
         foregroundColor: const Color.fromARGB(255, 48, 44, 44)),
         backgroundColor: const Color.from(alpha: 1, red: 0.047, green: 0.173, blue: 0.278),
         body:ListView(
          padding:EdgeInsets.only(left: 50, right: 50),
          children:[

           GestureDetector(onTap: (){
             Navigator.push( context,MaterialPageRoute(builder: (context) => Page2()));
           },
            child: Card(
              child: ListTile(title: Text("Consultant"),
               subtitle: Text("Paediatrics"),
               leading: Icon(Icons.local_hospital),
               
               ),
            ),
          ),
          GestureDetector(onTap: () {
           Navigator.push( context,MaterialPageRoute(builder: (context) => Page3())); 
          },
            child: Card(
              child: ListTile(title: Text("Event Planners"),
               subtitle: Text("Decoration"),
               leading: Icon(Icons.event_seat),
                
              ),
            ),
          ),
          GestureDetector(onTap: () {
             Navigator.push(context,MaterialPageRoute(builder: (context) => Page4()));
          },
            child: Card(
              child: ListTile(title: Text("Electrician"),
               subtitle: Text("House Wiring"),
               leading: Icon(Icons.lightbulb_circle),
              ),
            ),
          ),
          GestureDetector(onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => Page5()));
          },
            child: Card(
              child: ListTile(title: Text("Farming"),
               subtitle: Text("Rearing"),
               leading: Icon(Icons.grass),
              ),
            ),
          ),
          GestureDetector(onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => Page6()));
          },
            child: Card(
              child: ListTile(title: Text("Mechanics"),
               subtitle: Text("Automobile Repair"),
               leading: Icon(Icons.car_crash),
              ),
            ),
          ),
         ], 
       ),
    );
  }
}

