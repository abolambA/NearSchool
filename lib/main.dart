import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:near_school/arabic_screens/auth/register_screen.dart';
import 'firebase_options.dart';
import 'package:near_school/arabic_screens/screens/home_screen.dart';

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
      title: 'NearSchool',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AdminHomeScreen(),
      
    );
  }
}
