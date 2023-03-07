import 'dart:core';
import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'dart:io';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _nameController;
  late TextEditingController _confirmController;
  final GlobalKey _formKey = GlobalKey(debugLabel: 'FormKey');

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 88,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 30),
                CustomEntryField(
                  label: 'Enter Name',
                  hint: 'Enter Name',
                  controller: _nameController,
                ),
                SizedBox(height: 15),
                CustomEntryField(
                  label: 'Enter Email',
                  hint: 'Enter Email',
                  controller: _emailController,
                ),
                SizedBox(height: 15),
                CustomEntryField(
                  label: 'Enter Password',
                   hint: 'Enter Password',
                  controller: _passwordController,
                ),
                SizedBox(height: 15),
                CustomEntryField(
                  label: 'Confirm Password',
                   hint: 'Confirm Password',
                  controller: _confirmController,
                ),
                CustomFlatButton(
                    label: 'Sign Up',
                    onPressed: () => {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}