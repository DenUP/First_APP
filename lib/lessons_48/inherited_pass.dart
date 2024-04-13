import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  // Сам экран
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: DataOwnerStatefull()),
    );
  }
}

class DataOwnerStatefull extends StatefulWidget {
  const DataOwnerStatefull({super.key});

  @override
  State<DataOwnerStatefull> createState() => _DataOwnerStatefullState();
}

class _DataOwnerStatefullState extends State<DataOwnerStatefull> {
  var _value = 0;

  void _increment() {
    _value += 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: _increment,
          child: const Text('Жми'),
        ),
        DataProviderInherited(
          value: _value,
          child: const DataConsumerStateless(),
        )
      ],
    );
  }
}

class DataConsumerStateless extends StatelessWidget {
  // Идет в вверх по дереву берет _value

  const DataConsumerStateless({super.key});

  @override
  Widget build(BuildContext context) {
    final value = context
            .dependOnInheritedWidgetOfExactType<DataProviderInherited>()
            ?.value ??
        0;
    // context.findAncestorStateOfType<_DataOwnerStatefullState>()?._value ??
    //     0;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('$value'),
          const DataConsumerStatefull(),
        ],
      ),
    );
  }
}

class DataConsumerStatefull extends StatefulWidget {
  const DataConsumerStatefull({super.key});

  @override
  State<DataConsumerStatefull> createState() => _DataConsumerStatefullState();
}

class _DataConsumerStatefullState extends State<DataConsumerStatefull> {
  @override
  Widget build(BuildContext context) {
    final element = context
        .getElementForInheritedWidgetOfExactType<DataProviderInherited>();

    final dataProvider = element?.widget as DataProviderInherited;
    final value = dataProvider.value;

    return Text('$value');
  }
}

// Добавление Инхерита, чтобы обновлялось число

class DataProviderInherited extends InheritedWidget {
  final int value;

  const DataProviderInherited({
    required this.value,
    super.key,
    required super.child,
  });

  @override
  bool updateShouldNotify(DataProviderInherited oldWidget) {
    // TODO: implement updateShouldNotify
    return value != oldWidget.value;
  }
}
