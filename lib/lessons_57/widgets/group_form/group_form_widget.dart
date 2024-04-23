import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lessons_1/lessons_57/widgets/group_form/group_form_widget_model.dart';

final _model = GroupFormWidgetModel();

class GroupWidgetForm extends StatefulWidget {
  const GroupWidgetForm({super.key});

  @override
  State<GroupWidgetForm> createState() => _GroupWidgetFormState();
}

class _GroupWidgetFormState extends State<GroupWidgetForm> {
  @override
  Widget build(BuildContext context) {
    return GroupFormWidgetModelProvider(
      model: _model,
      child: _GroupFormWidgetBody(),
    );
  }
}

class _GroupFormWidgetBody extends StatelessWidget {
  const _GroupFormWidgetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: const Text(
          'Создать новую категорию',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Container(
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: GroupNameWidget(),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => GroupFormWidgetModelProvider.read(context)
            ?.model
            .saveGroup(context),
        child: const Icon(Icons.done),
      ),
    );
    ;
  }
}

class GroupNameWidget extends StatelessWidget {
  const GroupNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = GroupFormWidgetModelProvider.read(context)?.model;
    return TextField(
      onChanged: (value) => model?.groupName = value,
      onEditingComplete: () {
        return model?.saveGroup(context);
      },
      autofocus: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(), hintText: 'Введите категорию'),
    );
  }
}
