import 'package:flutter/material.dart';
import 'login.dart';
import 'delete_account.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Column(
        children: [
          Card(child: ListTile(title: Text("Name:"))),
          Card(child: ListTile(title: Text("Email:"))),
          Card(child: ListTile(title: Text("Phone Number:"))),
           GestureDetector(onTap: null,child: Card(child: ListTile(title: Text("Change Username:")))),
          GestureDetector(onTap: null,child: Card(child: ListTile(title: Text("Change Password:")))),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Login()),
                (route) => false,
              );
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Login()),
              // );
            },
            child: Text("Logout"),),
            SizedBox(height: 20),
            ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DeleteAccount()),
              );
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Login()),
              // );
            },
            child: Text("Delete Account"),
          ),
        ],
      ),
    );
  }
}