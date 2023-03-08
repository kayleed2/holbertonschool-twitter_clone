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

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<Map<String, String>> _dummyUsers = [
    {'name': 'John Doe', 'username': 'johndoe', 'imgUrl': 'https://dummyimage.com/100x100/000/fff'},
    {'name': 'Jane Smith', 'username': 'janesmith', 'imgUrl': 'https://dummyimage.com/100x100/000/fff'},
    {'name': 'Bob Johnson', 'username': 'bobjohnson', 'imgUrl': 'https://dummyimage.com/100x100/000/fff'},
  ];
  TextEditingController? _searchController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBarMenu(),
      bottomNavigationBar: const BottomMenuBar(),
      appBar: AppBar(
        title: TextField(
           controller: _searchController,
           obscureText: true,
           decoration: InputDecoration(
             contentPadding: EdgeInsets.fromLTRB(10, 18, 10, 10),
             labelText: 'Search...',
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(30),
               borderSide: BorderSide(color: Colors.blue),
              ),
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
      body: ListView.builder(
        itemCount: _dummyUsers.length,
        itemBuilder: (BuildContext context, int index) {
          final user = _dummyUsers[index];
          return UsersSearchResultsWidget(
            name: user['name']!,
            username: user['username']!,
            imgUrl: user['imgUrl']!,
          );
        },
      ),
    );
  }
}
