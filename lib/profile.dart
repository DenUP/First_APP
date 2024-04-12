import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 341,
          height: 91,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromRGBO(5, 96, 250, 1),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset('assets/images/elips1.png'),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset('assets/images/elips2.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}