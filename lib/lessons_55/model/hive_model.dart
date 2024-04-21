import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'hive_model.g.dart';

class HiveWidgetModel {
  void doSome() async {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(UserRAdapter());
    }
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(PetAdapter());
    }
    var box = await Hive.openBox<UserR>('testBoxing');
    var petBox = await Hive.openBox<Pet>('petBox');
    // var user = User('Denis', 267, 'Vladimirovich');
    // var user = box.get('Den');
    // user?.age = 25;
    // user?.save();
    // await user?.delete();
    // final pet = Pet('Баллу');
    // // petBox.add(pet);
    // final pets = HiveList(petBox, objects: [pet]);
    var user = box.get('User');
    // box.put('User', user);
    final petq = user?.Pet?[0];
    // var pets = box.add
    // await box.put('Den', user);
    print(petq);
  }
}

@HiveType(typeId: 0)
class UserR extends HiveObject {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? surname;
  @HiveField(2)
  int? age;
  @HiveField(3)
  HiveList? Pet;

  UserR(this.name, this.age, this.surname, this.Pet);

  @override
  String toString() =>
      'name: $name, age: $age, surname: $surname, pet: ${Pet?.map((dynamic e) => e)},';
}

@HiveType(typeId: 1)
class Pet extends HiveObject {
  @HiveField(0)
  String? name;

  Pet(
    this.name,
  );

  @override
  String toString() => 'name: $name';
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
