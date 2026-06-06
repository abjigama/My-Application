import 'package:flutter/material.dart';

class Page3 extends StatelessWidget{
  const Page3({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text("Decoration and Event Management"),
         centerTitle: true,
         
         
         foregroundColor: const Color.fromARGB(255, 16, 16, 16),
         backgroundColor: const Color.from(alpha: 1, red: 0.047, green: 0.173, blue: 0.278)),
        
         body:ListView(
          padding:EdgeInsets.only(left: 50, right: 50),
          children:[

          Card(
            child: ListTile(title: Text("ABOUT: we help,plan and organize weddings,birthday parties,corporate events,and other special occasions)"),
             subtitle: Text("Book Event"),
             
             
             
             
             ),
          ),
          Card(
            child: ListTile(title: Text("SERVICES"),
             subtitle: Text("Packages"),

          ),
  
  )]));}} 