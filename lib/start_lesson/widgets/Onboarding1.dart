import 'package:flutter/material.dart';
import 'package:lessons_1/start_lesson/widgets/text_onboarding.dart';

class OnBoardingOne extends StatelessWidget {
  const OnBoardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/one.png'),
              Center(
                child: TextOnboarding(
                  title: 'fd321123s',
                  description: 'fd32132121s',
                ),
              ),
              Text('ds')
            ],
          ),
        ),
      ),
    );
  }
}
