import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter/screens/signin_screen.dart';
import 'package:provider/provider.dart';
import 'package:twitter/providers/app_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppState()),
      ],
      child: MaterialApp(
        title: 'Twitter Clone',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.mulishTextTheme(),
          ),
          home: const SignIn(),
      ));
  }
}
