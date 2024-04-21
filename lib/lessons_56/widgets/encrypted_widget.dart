import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lessons_1/lessons_56/model/encrypted_model.dart';

class EncryptedWidget extends StatefulWidget {
  const EncryptedWidget({super.key});

  @override
  State<EncryptedWidget> createState() => _EncryptedWidgetState();
}

class _EncryptedWidgetState extends State<EncryptedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: EncryptedModel().setup,
              child: const Text('Настройка'),
            ),
            ElevatedButton(
              onPressed: EncryptedModel().doSome,
              child: const Text('Добавление записи'),
            )
          ],
        ),
      )),
    );
  }
}
