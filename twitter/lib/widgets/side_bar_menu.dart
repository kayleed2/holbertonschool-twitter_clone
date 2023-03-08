import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter/screens/signin_screen.dart';
import 'dart:core';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({Key? key}) : super(key: key);
  @override
  _SideBarMenuState createState() => _SideBarMenuState();
  }
  
class _SideBarMenuState extends State<SideBarMenu> {
  @override
  Widget build(BuildContext context) {
     return Drawer(
      child: ListView(
        padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
        children: [
          Container(
            child: DrawerHeader(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/9161/9161214.png'),
                      radius: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                      child: Text(
                        'UserName',
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text('0 Followers')),
                        Expanded(
                            child: Text('0 Following')),
                      ],
                    ),
                  ]),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.format_list_bulleted),
            title: Text('Lists'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text('Bookmark'),
           onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.flash_on),
            title: Text('Moments'),
           onTap: () => {},
          ),
          Divider(
            color: Colors.grey[400],
          ),
          ListTile(
            title: Text('Settings and privacy'),
            onTap: () => {},
          ),
          ListTile(
            title: Text('Help Center'),
            onTap: () => {},
          ),
          Divider(
            color: Colors.grey[400],
          ),
          ListTile(
            title: Text('Logout'),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
