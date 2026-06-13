import 'package:flutter/material.dart';
import 'forget_password.dart';
import 'sign_up.dart';
import 'dashboard.dart';


class Login extends StatelessWidget {
   Login({super.key});

  String email = "";
  String password = "";
  bool incorrect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Column(
        children: [
          Text("Welcome to ProFinder, Login to continue"),
          SizedBox(height: 20),
          Text("Email:"),
          TextFormField(
            onChanged: (value){
              email = value;
            }
          ),
          SizedBox(height: 10),
          Text("Password:"),
          TextFormField(obscureText: true,
          onChanged: (value){
            password = value;
          },
          ),
          SizedBox(height: 20),
          Visibility(
            visible: incorrect,
            child: Text("incorrect login details",
            style: 
            TextStyle(color: Colors.red))),
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
                (route) => false,
              );
              if (email == "group3@idga.com.ng" && password == "12345678"){
                Navigator.pushAndRemoveUntil(context, 
                MaterialPageRoute(builder: (context) => Dashboard()),
                (route) => false,
                );
              } else {
                incorrect = true;
              }
            },
            child: Text("Submit"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgetPassword()),
              );
            },
            child: Text("Forget password"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            child: Text("Sign up"),
          ),
           
        ],
      ),
    );
  }
}

