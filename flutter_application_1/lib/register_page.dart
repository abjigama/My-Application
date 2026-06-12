import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State<Register> createState() => RegisterState();
}
  class RegisterState extends State<Register> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final authService  = AuthServices();
  String errorMessage = '';

    @override
      void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
   }
      void register() async{
        try {
          await authService.createAccount(
          email: _emailController.text,
          password: _passwordController.text,
         );
       popPage();
       }on FirebaseAuthException catch (e) {
        setState((){
          errorMessage = e.message ?? 'There is an error';

        });
       }
  
      }

      void popPage(){
        Navigator.pop(context);
      }

     @override
    Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text("Register ProFinder")),
         body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              children: [
               TextField(controller: _emailController,decoration: const InputDecoration(labelText: 'Email'),),
               TextField(controller: _passwordController,decoration: const InputDecoration(labelText: 'password'), obscureText: true),
               const SizedBox(height: 20,),
               ElevatedButton(onPressed: register, child: const Text('Register')),
               Text('errorMessage',
                style: const TextStyle(color: Colors.red)
                ),
                const SizedBox(height: 10),

            
              ],
          ),
         ),
      );
      
            
    }
  }



