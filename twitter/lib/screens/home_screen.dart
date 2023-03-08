import 'package:flutter/material.dart';
import 'package:twitter/screens/signin_screen.dart';
import 'package:twitter/widgets/bar_menu.dart';
import 'package:twitter/widgets/side_bar_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blue,

      ),
      drawer: const SideBarMenu(),
      bottomNavigationBar: const BottomMenuBar(),
    );
  }
}
