import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'forget_password.dart';
import 'sign_up.dart';
import 'dashboard.dart';
import 'auth_service.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = "";
  String password = "";
  bool incorrect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Change overall page background color
      backgroundColor: const Color.fromARGB(255, 30, 101, 137),
      // 2. Add and color the AppBar
      appBar: AppBar(
        title: const Text("ProFinder"),
        backgroundColor: const Color.fromARGB(255, 239, 241, 252),
        elevation: 0, // optional: removes the shadow under the appBar
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Centralized and white text
              const Text(
                "Welcome to ProFinder Application, Login to continue",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(height: 20),
              
              const Text(
                "Email:",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              TextFormField(
                style: const TextStyle(color: Colors.white), // Input text color
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                onChanged: (value) {
                  email = value;
                },
              ),
              const SizedBox(height: 20),
              
              const Text(
                "Password:",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              TextFormField(
                obscureText: true,
                style: const TextStyle(color: Colors.white), // Input text color
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                onChanged: (value) {
                  password = value;
                },
              ),
              const SizedBox(height: 20),
              
              Visibility(
                visible: incorrect,
                child: const Text(
                  "Incorrect login details",
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              
              ElevatedButton(
                onPressed: () async {
                  try {
                    await authServices.value.signIn(
                      emailAddress: email,
                      userpassword: password,
                    );
                    
                    // Reset error state on success
                    setState(() {
                      incorrect = false;
                    });

                    // This will now ONLY execute if signin succeeds
                    if (mounted) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Dashboard()),
                      );
                    }
                  } on FirebaseAuthException catch (e) {
                    print(e.message);
                    // Update state to show the error message on screen
                    setState(() {
                      incorrect = true;
                    });
                  }
                },
                child: const Text("Submit"),
              ),
              const SizedBox(height: 20),
              
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgetPassword()),
                  );
                },
                child: const Text("Forget password"),
              ),
              const SizedBox(height: 20),
              
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: const Text("Sign up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}