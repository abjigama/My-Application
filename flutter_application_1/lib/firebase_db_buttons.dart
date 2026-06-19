import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/database_service.dart';
import 'dart:convert';



class FirebaseDbButtons extends StatefulWidget {
  const FirebaseDbButtons({super.key});

 @override
 State<FirebaseDbButtons> createState() => _FirebaseDbButtonsState();
}

class _FirebaseDbButtonsState extends State<FirebaseDbButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.all(20.0),
        child: Column (mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ElevatedButton(
             onPressed: () async{
               await DatabaseService().create(
                 path: 'data1',
                 data: {'name':'ProFinder'},
                );
              },
              child: const Text('Create'),          
            ),
           const SizedBox(height: 10.0),
           ElevatedButton(
             onPressed: () async{
               DataSnapshot? snapshot =
               await DatabaseService().read(path:'data1');
                if (kDebugMode){
                 print(snapshot?.value);
               }
             
              },
              child: const Text('Read'),          
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () async{
                await DatabaseService().update(path: 'data2', data: {'name':'ProFinder'});
              },
              child: const Text('Update'),          
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () async{
                await DatabaseService().delete(path: 'data3');
              },
              child: const Text('Delete'),          
            ),

          ], 
        ),
      ),
    ); 
  }

}