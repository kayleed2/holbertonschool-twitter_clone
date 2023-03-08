import 'dart:core';
import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/screens/forgot_password_screen.dart';
import 'package:twitter/widgets/side_bar_menu.dart';
import 'dart:io';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBarMenu(),
      appBar: AppBar(
        title: Text('Chats'),
      ),
    );
  }
}
