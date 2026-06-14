import 'package:flutter/material.dart';

class Electrician extends StatelessWidget{
  const Electrician({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text("Expert House Wiring Services"),
         centerTitle: true,
         
         
         foregroundColor: const Color.fromARGB(255, 16, 16, 16),
         backgroundColor: const Color.fromARGB(255, 56, 117, 166)),
        
         body:ListView(
          padding:EdgeInsets.only(left: 50, right: 50),
          children:[

          Card(
            child: ListTile(title: Text("ABOUT- Professional Electrician Specializing In House Wiring,Electrical Installation,and Maintenance Services"),
             subtitle: Text("House Wiring"),
             
             
             
             
             ),
          ),
          Card(
            child: ListTile(title: Text("REQUEST SERVICES"),
             subtitle: Text("Call Electrician"),

          ),
  
  )]));}} 