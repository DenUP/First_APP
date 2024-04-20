import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveWidgetModel {
  void doSome() async {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(UserAdapter());
    }
    var box = await Hive.openBox<User>('testBox');

    // box.put('names', "123454");
    // box.put('age', 25);
    // box.add('keyboard');
    // final boxDel = await box.deleteAt(3);
    // final delValue = await box.delete(1);
    // box.add(User(name: 'Denis', age: 25));
    // final user = User('Names', 222);
    // final user_ad = box.add(user);

    // final user = User('Ivan', 54);
    // await box.add(user);

    // await box.put('123455', User('nameee', 22));
    // await box.add(User('Deis', 220));
    final userFromBox = box.getAt(0);
    print(box.keys);

    print(userFromBox);
    // box.close();
  }
}

class User {
  String name;
  int age;

  User(this.name, this.age);

  @override
  String toString() => 'name: $name, age: $age';
}

class UserAdapter extends TypeAdapter<User> {
  @override
  final typeId = 0;

  @override
  User read(BinaryReader reader) {
    final name = reader.readString();
    final age = reader.readInt();
    return User(name, age);
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer.writeString(obj.name);
    writer.writeInt(obj.age);
  }
}
