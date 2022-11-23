import 'package:flutter/material.dart';

int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item ${index + 1}'),
          textColor: Colors.white,
          leading: const Icon(
            Icons.person,
            color: Colors.white,
          ),
          trailing: const Icon(
            Icons.select_all_rounded,
            color: Colors.white,
          ),
          onTap: () {
            debugPrint('Item ${index + 1} selected');
          },
        );
      },
    );
  }
}
