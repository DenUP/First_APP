import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lessons_1/start_lesson/widgets/Menu_row_widgets.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Setting',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _UserInfo(),
                SizedBox(
                  height: 15,
                ),
                _MenuWidget(),
                SizedBox(
                  height: 10,
                ),
                _MenuWidget(),
                _MenuWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  const _MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(Icons.favorite),
              SizedBox(
                width: 10,
              ),
              Text('Избранное'),
              Spacer(),
              Icon(Icons.chevron_right)
            ],
          )
        ]));
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          color: Colors.white,
          child: const Column(
            children: [
              SizedBox(
                height: 30,
              ),
              _AvatarWidget(),
              SizedBox(
                height: 30,
              ),
              _UserNameWidget(),
              SizedBox(
                height: 10,
              ),
              _UserPhoneWidget(),
              SizedBox(
                height: 10,
              ),
              _UserNickNameWidget(),
            ],
          ),
        ),
        const Positioned(
            top: 25,
            right: 25,
            child: Text(
              'Изм.',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
              ),
            ))
      ],
    );
  }
}

class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '@Denup',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 18,
      ),
    );
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+7 900 123 23 45',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    );
    ;
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Nickname',
      style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, child: Placeholder());
  }
}
