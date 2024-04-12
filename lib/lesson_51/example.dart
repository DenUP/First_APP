import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: [JsonExampleProvider()]),
    );
  }
}

class JsonExampleProvider extends InheritedWidget {
  final JsonExampleCoder coder,
  const JsonExampleProvider({
    super.key, required this.coder});

  @override
  State<JsonExampleProvider> createState() => _JsonExampleProviderState();

  @override
  bool updateShouldNotify(covariant JsonExampleProvider oldWidget) {
    // TODO: implement updateShouldNotify
    throw UnimplementedError();
  }
}

class _JsonExampleProviderState extends State<JsonExampleProvider> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
