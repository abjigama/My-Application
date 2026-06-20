import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/firebase_db_buttons.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'auth_layout.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(home: AuthLayout(), debugShowCheckedModeBanner: false));
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
     title: 'ProFinder',
     debugShowCheckedModeBanner: false,
     home: const FirebaseDbButtons(), //
    );
  }

}