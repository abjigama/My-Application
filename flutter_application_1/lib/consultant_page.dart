import 'package:flutter/material.dart';

class Page2 extends StatelessWidget{
  const Page2({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text("Your Personal Health Coach"),
         centerTitle: true,
         
         
         foregroundColor: const Color.fromARGB(255, 16, 16, 16),
         backgroundColor: const Color.from(alpha: 1, red: 0.047, green: 0.173, blue: 0.278)),
        
         body:ListView(
          padding:EdgeInsets.only(left: 50, right: 50),
          children:[
           

          Card(
            child: ListTile(title: Text("Description(pediatric consultant available for child health advice)"),
             subtitle: Text("Availability mon-fri"),
             
             
             
             
             ),
          ),
          Card(
            child: ListTile(title: Text("Book Appointment"),
             subtitle: Text("Call Consultant"),

          ),
  
  )]));}} 