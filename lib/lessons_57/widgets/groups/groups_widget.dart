import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:lessons_1/lessons_57/widgets/groups/groups_widget_model.dart';

class GroupsWidget extends StatefulWidget {
  const GroupsWidget({super.key});

  @override
  State<GroupsWidget> createState() => _GroupsWidgetState();
}

class _GroupsWidgetState extends State<GroupsWidget> {
  final _model = GroupWidgetModel();

  @override
  Widget build(BuildContext context) {
    return GroupWidgetProvider(
      model: _model,
      child: const _GroupWidgetBody(),
    );
  }
}

class _GroupWidgetBody extends StatelessWidget {
  const _GroupWidgetBody({super.key});

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
        onPressed: () =>
            GroupWidgetProvider.read(context)?.model.showFrom(context),
        child: const Icon(Icons.add),
      ),
    );
    ;
  }
}

class _GroupsListWidget extends StatelessWidget {
  const _GroupsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final groupsCount =
        GroupWidgetProvider.watch(context)?.model.groups.length ?? 0;
    return ListView.separated(
      itemBuilder: (context, index) {
        return _GroupsListRowWidget(indexList: index);
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: groupsCount,
    );
  }
}

class _GroupsListRowWidget extends StatelessWidget {
  final int indexList;
  const _GroupsListRowWidget({super.key, required this.indexList});

  @override
  Widget build(BuildContext context) {
    final model = GroupWidgetProvider.read(context)!.model;
    final group = model.groups[indexList];
    return Slidable(
      endActionPane: const ActionPane(
        motion:  BehindMotion(),
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
          title: Text(group.name),
        ),
      ),
    );
  }
}
