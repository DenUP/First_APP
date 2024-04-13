import 'package:flutter/material.dart';

class ExampleModel extends StatelessWidget {
  // Сам экран
  const ExampleModel({super.key});

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
  var _valueOne = 0;
  var _valueTwo = 0;

  void _incrementOne() {
    _valueOne += 1;
    setState(() {});
  }

  void _incrementTwo() {
    _valueTwo += 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: _incrementOne,
          child: const Text('Баттон 1'),
        ),
        ElevatedButton(
          onPressed: _incrementTwo,
          child: const Text('Баттон 2'),
        ),
        DataProviderInherited(
          valueOne: _valueOne,
          valueTwo: _valueTwo,
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
            .dependOnInheritedWidgetOfExactType<DataProviderInherited>(
                aspect: 1)
            ?.valueOne ??
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
    final value = context
            .dependOnInheritedWidgetOfExactType<DataProviderInherited>(
                aspect: 2)
            ?.valueTwo ??
        0;

    return Text('$value');
  }
}

T? getInherit<T>(BuildContext context) {
  final element =
      context.getElementForInheritedWidgetOfExactType<DataProviderInherited>();
  final widget = element?.widget;
  if (widget is T) {
    return widget as T;
  } else {
    return null;
  }
  // final dataProvider = element?.widget as DataProviderInherited;
  // final value = dataProvider.value;
}

// Добавление Инхерита, чтобы обновлялось число

class DataProviderInherited extends InheritedModel {
  final int valueOne;
  final int valueTwo;

  const DataProviderInherited({
    required this.valueTwo,
    required this.valueOne,
    super.key,
    required super.child,
  });

  @override
  bool updateShouldNotify(DataProviderInherited oldWidget) {
    // TODO: implement updateShouldNotify
    return valueOne != oldWidget.valueOne || valueTwo != oldWidget.valueTwo;
  }

  @override
  bool updateShouldNotifyDependent(
    covariant DataProviderInherited oldWidget,
    Set aspects,
  ) {
    final isValueOneUpdate =
        valueOne != oldWidget.valueOne && aspects.contains(1);
    final isValueTwoUpdate =
        valueTwo != oldWidget.valueTwo && aspects.contains(2);
    return isValueOneUpdate || isValueTwoUpdate;
  }
}
