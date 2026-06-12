import 'package:flutter/material.dart';
import 'login.dart';
import 'dashboard.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign up")),
      body: Column(
        children: [
          Text(
            "Welcome to ProFinder, a daily planning app. Create an account to start",
          ),
          SizedBox(height: 20),
          Text("Full Name:"),
          TextFormField(),
          SizedBox(height: 0.7),
          Text("Email Address:"),
          TextFormField(),
          SizedBox(height: 0.7),
          Text("Phone Number:"),
          TextFormField(),
          SizedBox(height: 0.7),
          Text("Password:"),
          TextFormField(obscureText: true),
          SizedBox(height: 0.7),
          Text("Confirm Password"),
          TextFormField(obscureText: true),
          SizedBox(height: 0.7),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: Text("Create Account"),
          ),
          SizedBox(height: 20),
          Text("Already have an account?"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Login()),
                (route) => false
              );
            },
            child: Text("Back to Login"),
          ),
        ],
      ),
    );
  }
}