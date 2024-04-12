import 'package:flutter/material.dart';

class AllUserProfile extends StatelessWidget {
  const AllUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> ListUsers = ['Оля', 'Петя', 'Nasya', 'Олег'];

    final List<Widget> ListUserData =
        ListUsers.map((String user) => TextWidget(name: user)).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: ListUserData,
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String name;

  const TextWidget({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(fontSize: 35),
    );
  }
}
