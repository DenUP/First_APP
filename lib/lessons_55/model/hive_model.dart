import 'package:hive_flutter/hive_flutter.dart';

class HiveWidgetModel {
  void doSome() async {
    var box = await Hive.openBox('test_box');
    // box.put('names', "123454");
    // box.put('age', 25);
    // box.add('keyboard');
    // final boxDel = await box.deleteAt(3);
    // final delValue = await box.delete(1);
    final boxGet = box.keys;

    // final boxii = box.putAt(1, 'kkkkkkk');

    print(boxGet);
    // box.close();
  }
}
