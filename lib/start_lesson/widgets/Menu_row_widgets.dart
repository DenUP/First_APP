import 'package:flutter/material.dart';

class MenuRowWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const MenuRowWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(icon),
          SizedBox(
            width: 10,
          ),
          Text(text),
          const Spacer(),
          const Icon(Icons.chevron_right),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
