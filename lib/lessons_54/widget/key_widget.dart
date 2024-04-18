import 'package:flutter/material.dart';
import 'package:lessons_1/lessons_54/model/key_model.dart';

class ExampleWidgetKey extends StatefulWidget {
  const ExampleWidgetKey({super.key});

  @override
  State<ExampleWidgetKey> createState() => _ExampleWidgetKeyState();
}

class _ExampleWidgetKeyState extends State<ExampleWidgetKey> {
  final _model = ExampleModelKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: _model.readName, child: const Text('Прочитать имя')),
            ElevatedButton(
                onPressed: _model.setName, child: const Text('Записать имя')),
            ElevatedButton(
                onPressed: _model.readToken,
                child: const Text('Прочитать Токен')),
            ElevatedButton(
                onPressed: _model.setToken, child: const Text('Записать Токен'))
          ],
        ),
      )),
    );
  }
}
