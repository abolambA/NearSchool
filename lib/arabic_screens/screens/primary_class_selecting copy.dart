import 'package:flutter/material.dart';

class PrimaryClassSelectionScreen extends StatefulWidget {
  @override
  _PrimaryClassSelectionScreenState createState() => _PrimaryClassSelectionScreenState();
}

class _PrimaryClassSelectionScreenState extends State<PrimaryClassSelectionScreen> {
  String? selectedGrade;
  String? selectedSection;

  final List<String> grades = ['Grade 1', 'Grade 2', 'Grade 3', 'Grade 4'];
  final List<String> sections = ['Section 1', 'Section 2', 'Section 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Name', style: TextStyle(color: Colors.blue[900])),
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
              '( section name )',
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