import 'package:flutter/material.dart';
import 'package:lessons_1/lessons_53/widgets/file_model.dart';

class FileMain extends StatefulWidget {
  const FileMain({super.key});

  @override
  State<FileMain> createState() => _FileMainState();
}

class _FileMainState extends State<FileMain> {
  final _model = fileWidgetModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FileWidgetProvaider(
          model: _model,
          child: Center(
            child: Column(
              children: [const ReadFailButton()],
            ),
          ),
        ),
      ),
    );
  }
}

class ReadFailButton extends StatelessWidget {
  const ReadFailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: FileWidgetProvaider.read(context)!.model.readFile,
        child: const Text('Кнопка вызова'));
  }
}
