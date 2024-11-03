import 'package:flutter/material.dart';
import 'package:near_school/arabic_screens/screens/middle_class_selecting.dart';
import 'package:near_school/arabic_screens/screens/primary_class_selecting.dart';
import 'package:near_school/arabic_screens/screens/secondary_class_selecting.dart';

class AdminHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NearSchool', style: TextStyle(
          color: Colors.blue[900],
          fontWeight: FontWeight.bold,
          )
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.info_outline, color: Colors.blue[900]),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.language, color: Colors.blue[900]),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectionButton(
              text: 'Primary',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrimaryClassSelectionScreen(),
                  ),
                );
              },
            ),
            SelectionButton(
              text: 'Middle',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MiddleClassSelectionScreen(),
                  ),
                );
              },
            ),
            SelectionButton(
              text: 'Secondary',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondaryClassSelectionScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: IconButton(
                icon: Icon(Icons.home, color: Colors.white),
                onPressed: () {},
              ),
            ),
            Container(
              height: 24,
              width: 1,
              color: Colors.grey[300], // Divider color
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.person, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelectionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  SelectionButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(vertical: 20.0),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0), // Add right margin
              child: Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
