import 'package:flutter/material.dart';

class Mechanic extends StatelessWidget{
  const Mechanic({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text("Automative Repair And Diagnostic"),
         centerTitle: true,
         
         
         foregroundColor: const Color.fromARGB(255, 255, 252, 252),
         backgroundColor: const Color.fromARGB(255, 56, 117, 166)
         ),
        
         body:ListView(
          padding:EdgeInsets.only(left: 50, right: 50),
          children:[

          Card(
            child: ListTile(title: Text("Professional Auto Mechanic "),
             subtitle: Text("Keeping Your Vehicle Safe and Roadworthy"),
             tileColor: const Color.fromARGB(255, 117, 156, 223),
             textColor: Colors.white
             
             
             
             ),
          ),
          Card(
            child: ListTile(title: Text("Professional Engine Services"),
             subtitle: Text("Engine Repair,Oil change,Brake Services"),
             tileColor: const Color.fromARGB(255, 117, 156, 223),
             textColor: const Color.fromARGB(255, 241, 238, 238)

          ),
  
  )]));}} 