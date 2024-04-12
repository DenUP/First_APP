import 'package:flutter/material.dart';

final List<TwoString> TextData = [
  TwoString(
      text1: 'Quick Delivery At Your Doorstep',
      text2: 'Enjoy quick pick-up and delivery to your destination'),
  TwoString(
      text1: 'Flexible Payment',
      text2:
          'Different modes of payment either before and after delivery without stress'),
  TwoString(
    text1: 'Real-time Tracking',
    text2:
        'Track your packages/items from the comfort of your home till final destination',
  )
];

class TwoString {
  final String text1;
  final String text2;

  TwoString({required this.text1, required this.text2});
}

class TextOnboarding extends StatelessWidget {
  final String title;
  final String description;
  const TextOnboarding(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    final List<Widget> ListTitleData =
        TextData.map((TwoString text) => TextOnboarding(
              title: text.text1,
              description: text.text2,
            )).toList();

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(5, 96, 250, 1)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black38),
            ),
          ],
        ));
  }
}
