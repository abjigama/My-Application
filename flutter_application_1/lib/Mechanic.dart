import 'package:flutter/material.dart';

class Page6 extends StatelessWidget{
  const Page6({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text("Automative Repair And Diagnostic"),
         centerTitle: true,
         
         
         foregroundColor: const Color.fromARGB(255, 16, 16, 16),
         backgroundColor: const Color.from(alpha: 1, red: 0.047, green: 0.173, blue: 0.278)),
        
         body:ListView(
          padding:EdgeInsets.only(left: 50, right: 50),
          children:[

          Card(
            child: ListTile(title: Text("Professional Auto Mechanic "),
             subtitle: Text("Keeping Your Vehicle Safe and Roadworthy"),
             
             
             
             
             ),
          ),
          Card(
            child: ListTile(title: Text("Professional Engine Services"),
             subtitle: Text("Engine Repair,Oil change,Brake Services"),

          ),
  
  )]));}} 