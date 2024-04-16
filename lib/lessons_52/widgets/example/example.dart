import 'package:flutter/material.dart';
import 'package:lessons_1/lessons_52/widgets/example/example_model.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  final model = ExampleWidgetModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ExampleModelProvider(
          model: model,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const _ReloadButton(),
              const _CreatedButton(),
              const Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: _PostWidget(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class _ReloadButton extends StatelessWidget {
  const _ReloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () =>
            ExampleModelProvider.read(context)?.model.reloadPosts(),
        child: const Text('Обновить посты'));
  }
}

class _CreatedButton extends StatelessWidget {
  const _CreatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => ExampleModelProvider.read(context)?.model.createPost(),
        child: const Text('Создать пост'));
  }
}

class _PostWidget extends StatelessWidget {
  const _PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ExampleModelProvider.wath(context)?.model.post.length ?? 0,
      itemBuilder: (context, index) {
        return _PostRowWidget(index: index);
      },
    );
  }
}

class _PostRowWidget extends StatelessWidget {
  final int index;
  const _PostRowWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final post = ExampleModelProvider.read(context)!.model.post[index];
    return Column(
      children: [
        Text(
          post.id.toString(),
          textAlign: TextAlign.end,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(post.title),
        const SizedBox(
          height: 10,
        ),
        Text(
          post.body,
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
