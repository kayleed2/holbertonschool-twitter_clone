import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String username;
  final String displayName;
  final String avatarUrl;
  final String text;

  const PostWidget({
    Key? key,
    required this.username,
    required this.displayName,
    required this.avatarUrl,
    required this.text,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(avatarUrl),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      displayName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '@$username',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                     '2 m',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        ),
                    ),
                    SizedBox(width: 75),
                    Icon(Icons.keyboard_arrow_down_outlined),
                   ],
                ),
                SizedBox(height: 8),
                Text(
                  text,
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 8),
                Row(
                    children: [
                      Icon(
                        Icons.chat_bubble_outline,
                        size: 20,
                        color: Colors.grey[500],
                        ),
                      Text(' 0'),
                      SizedBox(width: 30),
                      Icon(
                        Icons.redo,
                        size: 20,
                        color: Colors.grey[500],
                        ),
                      Text(' 0'),
                      SizedBox(width: 30),
                      Icon(
                        Icons.favorite,
                        size: 20,
                        color: Colors.pink[600],
                        ),
                        Text(' 2'),
                        SizedBox(width: 30),
                      Icon(
                        Icons.share,
                        size: 20,
                        color: Colors.grey[500],
                        ),
                    ]
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
