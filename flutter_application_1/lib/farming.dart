import 'package:flutter/material.dart';

class Page5 extends StatelessWidget{
  const Page5({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text("Professional Farming Services"),
         centerTitle: true,
         
         
         foregroundColor: const Color.fromARGB(255, 16, 16, 16),
         backgroundColor: const Color.from(alpha: 1, red: 0.047, green: 0.173, blue: 0.278)),
        
         body:ListView(
          padding:EdgeInsets.only(left: 50, right: 50),
          children:[

          Card(
            child: ListTile(title: Text("ABOUT- Crop Production,Livestock, Agricultural Support"),
             subtitle: Text("Farm Management And Production"),
             
             
             
             
             ),
          ),
          Card(
            child: ListTile(title: Text("GROW BETTER"),
             subtitle: Text("Harvest More"),

          ),
  
  )]));}} 