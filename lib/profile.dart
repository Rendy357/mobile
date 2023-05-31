import 'package:flutter/material.dart';
import 'package:frozen_food/widgets/primary_button.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _userName = 'User Name'; // Replace with actual user name
  String _userEmail = 'user.email@example.com'; // Replace with actual user email

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name: $_userName',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Email: $_userEmail',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add logout functionality here
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
