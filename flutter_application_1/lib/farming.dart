import 'package:flutter/material.dart';

class Farming extends StatelessWidget{
  const Farming({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text("Professional Farming Services"),
         centerTitle: true,
         
         
         foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(255, 56, 117, 166)),
        
         body:ListView(
          padding:EdgeInsets.only(left: 50, right: 50),
          children:[

          Card(
            child: ListTile(title: Text("ABOUT- Crop Production,Livestock, Agricultural Support"),
             subtitle: Text("Farm Management And Production"),
             tileColor: const Color.fromARGB(255, 117, 156, 223),
             textColor: const Color.fromARGB(255, 245, 236, 236)
             ),
          ),
          Card(
            child: ListTile(title: Text("GROW BETTER"),
             subtitle: Text("Harvest More"),
             tileColor: const Color.fromARGB(255, 117, 156, 223),
             textColor: const Color.fromARGB(255, 243, 239, 239)

          ),
  
  )]));}} 