import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Page")),
      body: Column(
        children: [
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBD9kJLV4sOfffui-1LJnW9dGiR9UPneZLsg&s",
            width: 100,
            height: 100,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Select Image")),
          Card(
            child: ListTile(
              title: Text("Name"),
              subtitle: Text("Aliyu Lawal"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Email:"),
              subtitle: Text("aliyulawal@gmail.com"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Phone Number"),
              subtitle: Text("09164057294"),
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
            child: Text("Logout"),
          ),
        ],
      ),
    );
  }
}