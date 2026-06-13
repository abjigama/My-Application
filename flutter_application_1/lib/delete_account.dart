import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'login.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Delete Account"),
      centerTitle: true,),
      body: SafeArea(
        child: Column(
          children: [
           SizedBox(height: 20),
          Text("Email.Address"),
          TextFormField(),
          SizedBox(height: 20),
          Text("Current Password"),
          TextFormField(), 
          SizedBox(height: 20),
          Text("Are you sure you want to delete your account? This action is permanent and cannot be undone."),
          ElevatedButton(
            onPressed: () {
             Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Login()),
                (route) => false,
              );;
            },
            child: Text("Delete Permanently"),
          ),
            

          ],
        )),
    );
    
  }
}
