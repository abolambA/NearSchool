import 'package:flutter/material.dart';


class ClassSelectionScreen extends StatelessWidget {
  final String section;

  ClassSelectionScreen({required this.section});

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
            Text(
              '($section)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900,
              ),
            ),
            SizedBox(height: 16),
            buildDropdownButton('Grade'),
            SizedBox(height: 16),
            buildDropdownButton('Section'),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Add your continue logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade900,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDropdownButton(String hint) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20),
      ),
      child: DropdownButton<String>(
        underline: SizedBox(),
        isExpanded: true,
        hint: Text(
          hint,
          style: TextStyle(color: Colors.blue.shade900, fontSize: 16),
        ),
        items: [],
        onChanged: (value) {
          // Add your dropdown change logic here
        },
      ),
    );
  }
}
