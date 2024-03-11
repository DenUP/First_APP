import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: 100, height: 100, child: Placeholder()),
            SizedBox(
              height: 3,
            ),
            Text('Nickname'),
            SizedBox(
              height: 5,
            ),
            Text('+7 900 123 23 45'),
            SizedBox(
              height: 5,
            ),
            Text('@Denup'),
          ],
        ),
      ),
    );
  }
}
