import 'package:flutter/material.dart';
import 'package:lessons_1/lessons_55/model/hive_model.dart';

class Hive_Widget extends StatefulWidget {
  const Hive_Widget({super.key});

  @override
  State<Hive_Widget> createState() => _Hive_WidgetState();
}

class _Hive_WidgetState extends State<Hive_Widget> {
  final model = HiveWidgetModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: model.doSome,
                child: const Text('Жми'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
