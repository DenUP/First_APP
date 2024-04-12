import 'package:flutter/material.dart';

class ToText {
  final String title;
  final String description;

  ToText({required this.title, required this.description});
}

final List<ToText> AllUser = [
  ToText(title: 'Nasya', description: 'Girl'),
  ToText(title: 'Den', description: 'Boy'),
  ToText(title: 'Lera', description: 'Girl'),
  ToText(title: 'Maksim', description: 'Boy'),
];

final List<Widget> AllUserData =
    AllUser.map((ToText name) => RowText_Widget(title: name)).toList();

class AllUserProfile extends StatelessWidget {
  const AllUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: AllUserData,
        ),
      ),
    );
  }
}

class RowText_Widget extends StatelessWidget {
  final ToText title;
  const RowText_Widget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title.title,
          style: TextStyle(color: Colors.amber),
        ),
        SizedBox(
          width: 10,
        ),
        Text(title.description),
      ],
    );
  }
}
