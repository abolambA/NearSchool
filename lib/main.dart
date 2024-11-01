import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:near_school/arabic_screens/auth/register_screen.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,);
  runApp(NearSchool());
}

class NearSchool extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterScreen(),
    );
  }
}
