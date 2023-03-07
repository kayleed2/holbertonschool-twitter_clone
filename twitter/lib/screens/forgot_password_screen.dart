import 'dart:core';
import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'dart:io';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  late TextEditingController _emailController;

  @override
  initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password'),
        backgroundColor: Colors.grey.shade100,
        foregroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                child: Text(
                    textAlign: TextAlign.center,
                    'Forget Password',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 30),
                child: Center(
                  child: Text(
                     textAlign: TextAlign.center,
                    'Enter your email address below to receive password reset instruction',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      foreground: Paint()
                        ..color = Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
              CustomEntryField(
                label: 'Enter Email',
                hint: 'Enter Email',
                controller: _emailController,
              ),
              const SizedBox(height: 20),
              CustomFlatButton(
                label: 'Submit',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
