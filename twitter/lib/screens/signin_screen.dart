import 'dart:core';
import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/screens/forgot_password_screen.dart';
import 'dart:io';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomEntryField(
                label: 'Enter Email',
                hint: 'Enter Email',
                controller: _emailController,
              ),
              const SizedBox(height: 20),
              CustomEntryField(
                label: 'Enter Password',
                hint: 'Enter Password',
                controller: _passwordController,
                isPassword: true,
              ),
              const SizedBox(height: 20),
              CustomFlatButton(
                label: 'Submit',
                onPressed: () {},
              ),
             TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () { 
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
               child: Text(
                  'Sign up',
                  style: TextStyle(fontWeight: FontWeight.bold),
              )
              ),
             TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () { 
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ForgetPassword()),
                  );
                },
                child: Text(
                  'Forget password?',
                  style: TextStyle(fontWeight: FontWeight.bold),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
