import 'package:flutter/material.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Card(child: ListTile(title: Text("Back to profile"))),
            SizedBox(height: 20),
            Text("Are you sure you want to delete your account? This action is permanent and cannot be undone.")
            
            

          ],
        )),
    );
    
  }
}
