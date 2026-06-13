import 'package:flutter/material.dart';
import 'forget_password_sent.dart.dart';
import 'auth_service.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  String email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forget Password")),
      body: Column(
        children: [
          Text("Use the form below to request for password reset"),
          SizedBox(height: 20),
          Text("Email:"),
          TextFormField(
           onChanged:(value){
             email = value;
           },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              authServices.value.resetPassword(emailAddress: email);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgetPasswordSent()),
              );
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}