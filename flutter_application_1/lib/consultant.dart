import 'package:flutter/material.dart';

class Consultant extends StatelessWidget{
  const Consultant({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text("Your Personal Health Coach"),
         centerTitle: true,
         
         
         foregroundColor: const Color.fromARGB(255, 255, 255, 255),
         backgroundColor: const Color.fromARGB(255, 56, 117, 166)),
        
         body:ListView(
          padding:EdgeInsets.only(left: 50, right: 50),
          children:[
           

          Card(
            child: ListTile(title: Text("Description(pediatric consultant available for child health advice)"),
             subtitle: Text("Availability mon-fri"),
             tileColor: const Color.fromARGB(255, 117, 156, 223),
             textColor: Colors.white
             
             
             
             
             ),
          ),
          Card(
            child: ListTile(title: Text("Book Appointment"),
             subtitle: Text("Call Consultant"),
             tileColor: const Color.fromARGB(255, 117, 156, 223),
             textColor: Colors.white

          ),
  
  )]));}} 