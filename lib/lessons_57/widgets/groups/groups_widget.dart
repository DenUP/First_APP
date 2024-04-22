import 'package:flutter/material.dart';

class GroupsWidget extends StatelessWidget {
  const GroupsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Категории',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _GroupsListWidget(),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
    );
  }
}

class _GroupsListWidget extends StatelessWidget {
  const _GroupsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return _GroupsListRowWidget(indexList: index);
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: 50,
    );
  }
}

class _GroupsListRowWidget extends StatelessWidget {
  final int indexList;
  const _GroupsListRowWidget({super.key, required this.indexList});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Text $indexList'),
    );
  }
}
