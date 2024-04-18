import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

class fileWidgetModel extends ChangeNotifier {
  void readFile() async {
    final _local = await pathProvider.getApplicationCacheDirectory();
    final path = _local.path + '/txt.txt';
    final file = File(path);
    final string = '222dasdsadsa';
    final isExist = await file.exists();
    print(isExist);

    if (!isExist) {
      await file.create();
      await file.readAsString();
      await file.writeAsString(string);
    } else {
      await file.delete();
      await file.readAsString();
    }
    

    // await file.writeAsString(string).timeout(Durations.short1);

    print(await file.readAsString());
  }
}

class FileWidgetProvaider extends InheritedNotifier {
  final fileWidgetModel model;
  const FileWidgetProvaider(
      {super.key, required this.model, required super.child});

  static FileWidgetProvaider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FileWidgetProvaider>();
  }

  static FileWidgetProvaider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<FileWidgetProvaider>()
        ?.widget;
    return widget is FileWidgetProvaider ? widget : null;
  }
}
