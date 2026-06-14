import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'login.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({super.key});

  
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Delete Account"),
      centerTitle: true,),
      body: SafeArea(
        child: Column(
          children: [
           SizedBox(height: 20),
          Text("Email.Address"),
          TextFormField(
            controller: emailController,
          ),

          SizedBox(height: 20),
          Text("Current Password"),
          TextFormField(
            controller: passwordController,
              obscureText: true,// Hides the password typing
          ), 
          SizedBox(height: 20),
          Text("Are you sure you want to delete your account? This action is permanent and cannot be undone."),
          ElevatedButton(
            onPressed: () async {
              try{
                await authServices.value.deleteAccount 
                (email:emailController.text,password:  passwordController.text,); 
              
               Navigator.pushAndRemoveUntil(
                 context,
                 MaterialPageRoute(builder: (context) => Login()),
                 (route) => false,
                );
              } catch (e){
                print("Error deleting account: $e");
              } 
            },
            child: Text("Delete Permanently"),
          ),
            

          ],
        )),
    );
    
  }
}
