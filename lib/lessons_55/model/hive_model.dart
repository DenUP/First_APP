import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'hive_model.g.dart';

class HiveWidgetModel {
  void doSome() async {
    var box = await Hive.openBox<User>('testBoxing');
    await box.add(User('Denis', 26, 'Vladimirovich'));
    print(box.values);
  }
}

@HiveType(typeId: 0)
class User {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? surname;
  @HiveField(2)
  int? age;

  User(this.name, this.age, this.surname);

  @override
  String toString() => 'name: $name, age: $age, surname: $surname';
}

// class UserAdapter extends TypeAdapter<User> {
//   @override
//   final typeId = 0;

//   @override
//   User read(BinaryReader reader) {
//     final name = reader.readString();
//     final age = reader.readInt();
//     return User(name, age);
//   }

//   @override
//   void write(BinaryWriter writer, User obj) {
//     writer.writeString(obj.name);
//     writer.writeInt(obj.age);
//   }
// }
