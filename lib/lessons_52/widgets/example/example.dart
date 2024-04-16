import 'package:flutter/material.dart';
import 'package:lessons_1/lessons_52/widgets/example/example_model.dart';

class Exmaple extends StatefulWidget {
  const Exmaple({super.key});

  @override
  State<Exmaple> createState() => _ExmapleState();
}

class _ExmapleState extends State<Exmaple> {
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
        Text(post.id.toString()),
        const SizedBox(
          height: 10,
        ),
        Text(post.title),
        const SizedBox(
          height: 10,
        ),
        Text(post.body),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
