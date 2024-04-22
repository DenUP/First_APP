import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class GroupsWidget extends StatelessWidget {
  const GroupsWidget({super.key});

  void showFrom(BuildContext context) {
    // function for navigation //
    Navigator.of(context).pushNamed('/groups/form');
  }

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
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: _GroupsListWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showFrom(context),
        child: Icon(Icons.add),
      ),
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
    return Slidable(
      endActionPane: const ActionPane(
        motion: BehindMotion(),
        children: [
          SlidableAction(
            // An action can be bigger than the others.
            flex: 1,
            onPressed: null,
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: ColoredBox(
        color: Colors.white,
        child: ListTile(
          onTap: () {},
          title: Text('Text $indexList'),
        ),
      ),
    );
  }
}
