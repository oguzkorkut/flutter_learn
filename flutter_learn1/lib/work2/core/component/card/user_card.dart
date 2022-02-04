import 'package:flutter/material.dart';

import 'package:flutter_learn1/work2/stateful/model/user.dart';

class UserCard extends StatelessWidget {
  // const UserCard({Key? key}) : super(key: key);

  final User user;

  final VoidCallback? onPressed;

  const UserCard({
    Key? key,
    required this.user,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(user.imageUrl),
        ),
        title: Text(user.title),
        subtitle: Text(user.description),
        trailing: Icon(Icons.arrow_right_rounded),
        // onTap: () {},
        onTap: onPressed,
      ),
    );
  }
}
