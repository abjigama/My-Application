import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'forget_password.dart';
import 'sign_up.dart';
import 'dashboard.dart';
import 'auth_service.dart';

class Login extends StatelessWidget {
  Login({super.key});

  String email = "";
  String password = "";
  bool incorrect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1. Change overall page backround color
      backgroundColor: const Color.fromARGB(255, 30, 101, 137),
      //2. Add and color the AppBar
      appBar: AppBar(
        title: Text("ProFinder"),
        backgroundColor: const Color.fromARGB(255, 239, 241, 252),
        //set Appbar background color
        elevation: 0,
        //optional: removes the shadow under the appBar
        ),
      body: Column(
        children: [
          Text("Welcome to ProFinder Application, Login to continue"),
          SizedBox(height: 20),
          Text("Email:"),
           
          TextFormField(
            onChanged: (value) {
              email = value;
            },
          ),
          SizedBox(height: 10),
          Text("Password:"),
          TextFormField(
            obscureText: true,
            onChanged: (value) {
              password = value;
            },
          ),
          SizedBox(height: 20),
          Visibility(
            visible: incorrect,
            child: Text(
              "Incorrect login details",
              style: TextStyle(color: Colors.red),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: ()  async {  
              try {
               await authServices.value.signIn(
                  emailAddress: email,
                  userpassword: password,
                );
                //this will now ONLY execute if signin succede
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              } on FirebaseAuthException catch (e) {
                print(e.message);
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