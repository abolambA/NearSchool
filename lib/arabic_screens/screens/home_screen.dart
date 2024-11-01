import 'package:flutter/material.dart';
import 'package:near_school/arabic_screens/screens/class_selecting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Section Select',
      home: SectionSelectionScreen(),
    );
  }
}

class SectionSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Name', style: TextStyle(color: Colors.blue.shade900)),
        backgroundColor: Colors.white,
        leading: Icon(Icons.info_outline, color: Colors.blue.shade900),
        centerTitle: true,
        actions: [
          Icon(Icons.language, color: Colors.blue.shade900),
          SizedBox(width: 10),
          Icon(Icons.star_border, color: Colors.blue.shade900),
          SizedBox(width: 10),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSectionButton(context, 'Primary'),
            SizedBox(height: 16),
            buildSectionButton(context, 'Middle'),
            SizedBox(height: 16),
            buildSectionButton(context, 'Secondary'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.blue.shade900,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget buildSectionButton(BuildContext context, String section) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ClassSelectionScreen(section: section),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue.shade900,
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.people, color: Colors.white),
              SizedBox(width: 8),
              Text(section, style: TextStyle(color: Colors.white, fontSize: 16)),
            ],
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.white),
        ],
      ),
    );
  }
}
