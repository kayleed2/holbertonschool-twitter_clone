import 'dart:core';
import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/screens/forgot_password_screen.dart';
import 'package:twitter/widgets/side_bar_menu.dart';
import 'package:twitter/widgets/bar_menu.dart';
import 'package:twitter/widgets/users_search_results_widget.dart';
import 'dart:io';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBarMenu(),
      bottomNavigationBar: const BottomMenuBar(),
      appBar: AppBar(
        centerTitle: false,
        title: Text(
                'Notifications',
                style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        
                ),
        ),
        leading: CircleAvatar(
                backgroundImage: NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/9161/9161214.png'),
                radius: 15,
                ),
                leadingWidth: 40,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.blue),
            onPressed: () {},
          )
        ]
      ),
      body: Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          color: Colors.grey[300],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
              'No Notifications available yet',
              style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     ),
              ),
              SizedBox(height: 8),
              Text(
              "When new notifications are found, they'll show up here",
              style: TextStyle(
                     fontSize: 15,
                     color: Colors.grey[600],
                     ),
              ),
            ]
          ),
          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.center,
          // width: 48.0,
          // height: 48.0,
        ),
    );
  }
}
