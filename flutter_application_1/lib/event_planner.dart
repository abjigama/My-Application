import 'package:flutter/material.dart';

class EventPlanner extends StatelessWidget{
  const EventPlanner({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text("Decoration and Event Managment"),
         centerTitle: true,
         
         
         foregroundColor: const Color.fromARGB(255, 250, 250, 250),
        backgroundColor: const Color.fromARGB(255, 56, 117, 166)),
        
         body:ListView(
          padding:EdgeInsets.only(left: 50, right: 50),
          children:[

          Card(
            child: ListTile(title: Text("ABOUT-We plan and organize weddings,birthday parties,coorperate events and other special occassions"),
             subtitle: Text("Event decoration and venue arrengement"),
             tileColor: const Color.fromARGB(255, 117, 156, 223),
             textColor: Colors.white
             
             ),
          ),
          Card(
            child: ListTile(title: Text("Book Event"),
             subtitle: Text("Call Planner"),
             tileColor: const Color.fromARGB(255, 117, 156, 223),
             textColor: Colors.white

          ),
  
  )]));}} 