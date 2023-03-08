import 'package:flutter/material.dart';

class UsersSearchResultsWidget extends StatelessWidget {
  final String name;
  final String username;
  final String imgUrl;

  const UsersSearchResultsWidget({
    required this.name,
    required this.username,
    required this.imgUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
      ),
      title: Text(name),
      subtitle: Text('@$username'),
    );
  }
}
