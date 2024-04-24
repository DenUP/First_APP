import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lessons_1/lessons_57/domain/entity/group.dart';

class GroupWidgetModel extends ChangeNotifier {
  var _group = <Group>[];

  List<Group> get groups => _group.toList();
  GroupWidgetModel() {
    _setup();
  }
  void showFrom(BuildContext context) {
    // function for navigation //
    Navigator.of(context).pushNamed('/groups/form');
  }

  void _readGroupsForm(Box<Group> box) {
    _group = box.values.toList();
    notifyListeners();
  }

  // Удаление из списка

  void deleteGroup(int groupIndex) async {
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(GroupAdapter());
    }
    final box = await Hive.openBox<Group>('group');
    await box.deleteAt(groupIndex);
  }

  void _setup() async {
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(GroupAdapter());
    }
    final box = await Hive.openBox<Group>('group');
    _readGroupsForm(box);
    box.listenable().addListener(() => _readGroupsForm(box));
  }
}

class GroupWidgetProvider extends InheritedNotifier {
  final GroupWidgetModel model;
  const GroupWidgetProvider({
    super.key,
    required this.model,
    required super.child,
  });

  static GroupWidgetProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GroupWidgetProvider>();
  }

  static GroupWidgetProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<GroupWidgetProvider>()
        ?.widget;
    return widget is GroupWidgetProvider ? widget : null;
  }
}
