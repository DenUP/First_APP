import 'package:lessons_1/lesson_51/address.dart';
import 'package:lessons_1/lesson_51/human.dart';

var jsonString = '''
[
  {
    "firestName": "Denis",
    "surname": "Vladimirovich",
    "age": 25,
    "adress": [
      {
        "city": "Moskov",
        "street": "Alele",
        "house": "25a",
        "float": 1
      }
    ]
  }
]
''';

final humans = [
  Human(
    name: 'Denis',
    surname: 'Vladimirovich',
    age: 25,
    address: [
      Address(city: 'Moskov', street: 'Alele', house: '25a', float: 1),
      Address(city: 'Elka', street: 'ELI', house: '1B', float: 3),
      Address(city: 'Elabyga', street: 'Pushkio', house: '1c', float: 1),
    ],
  ),
  Human(
    name: 'Oleg',
    surname: 'Olele',
    age: 29,
    address: [
      Address(city: 'Moskov', street: 'ewqeq', house: '21a', float: 1),
      Address(
          city: 'Snt. Petersbyrg', street: 'Esenins', house: '21a', float: 5),
    ],
  )
];
