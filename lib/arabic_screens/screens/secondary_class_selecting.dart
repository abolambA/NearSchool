import 'package:flutter/material.dart';

class SecondaryClassSelectionScreen extends StatefulWidget {
  @override
  _SecondaryClassSelectionScreenState createState() => _SecondaryClassSelectionScreenState();
}

class _SecondaryClassSelectionScreenState extends State<SecondaryClassSelectionScreen> {
  String? selectedGrade;
  String? selectedSection;

  final List<String> grades = ['Grade 9', 'Grade 10', 'Grade 11', 'Grade 12'];
  final List<String> sections = ['Section 1', 'Section 2', 'Section 3', 'Section 4', 'Section 5', 'Section 6', 'Section 7', 'Section 8'];

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
          icon: Icon(Icons.arrow_back, color: Colors.blue[900]),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.language, color: Colors.blue[900]),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Secondary',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              hint: Text('Grade'),
              value: selectedGrade,
              onChanged: (newValue) {
                setState(() {
                  selectedGrade = newValue;
                });
              },
              items: grades.map((grade) {
                return DropdownMenuItem(
                  value: grade,
                  child: Text(grade),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              hint: Text('Section'),
              value: selectedSection,
              onChanged: (newValue) {
                setState(() {
                  selectedSection = newValue;
                });
              },
              items: sections.map((section) {
                return DropdownMenuItem(
                  value: section,
                  child: Text(section),
                );
              }).toList(),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 64.0),
              ),
              onPressed: () {},
              child: Text('Continue', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
