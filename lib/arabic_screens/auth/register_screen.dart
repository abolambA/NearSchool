import 'package:flutter/material.dart';
import 'package:near_school/arabic_screens/auth/login_screen.dart';

// ignore: use_key_in_widget_constructors
class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: const Color(0xFF00246B),
          icon: const Icon(Icons.info_outline),
          onPressed: () {}, // Add your action here
        ),
        title: const Text('NearSchool', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF00246B))),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {}, // Add language toggle functionality
            icon: const Icon(Icons.language, color: Color(0xFF00246B)),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.05),
              Text(
                'Register Form',
                style: TextStyle(
                  fontSize: screenHeight * 0.03,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF00246B), // Match button color without gradient
                ),
              ),
              const SizedBox(height: 30), // Gap between text and input boxes

              // Full Name Input Field
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Name:',
                    style: TextStyle(color: const Color(0xFF00246B), fontSize: screenHeight * 0.025),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'E.g: Mohamad Nihad Alsoufi',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide.none, // Remove stroke
                      ),
                      filled: true,
                      fillColor: const Color(0x4000246B), // 25% opacity of the title color
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30), // Gap between input boxes

              // Phone Number Input Field
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone Number:',
                    style: TextStyle(color: const Color(0xFF00246B), fontSize: screenHeight * 0.025),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'E.g: 0501234567',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide.none, // Remove stroke
                      ),
                      filled: true,
                      fillColor: const Color(0x4000246B), // 25% opacity of the title color
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30), // Gap between input boxes

              // Email Input Field
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email:',
                    style: TextStyle(color: const Color(0xFF00246B), fontSize: screenHeight * 0.025),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'E.g: example@gmail.com',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide.none, // Remove stroke
                      ),
                      filled: true,
                      fillColor: const Color(0x4000246B), // 25% opacity of the title color
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30), // Gap between input boxes

              // Password Input Field
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password:',
                    style: TextStyle(color: const Color(0xFF00246B), fontSize: screenHeight * 0.025),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide.none, // Remove stroke
                      ),
                      filled: true,
                      fillColor: const Color(0x4000246B), // 25% opacity of the title color
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40), // Gap between password and button

              // Gradient Button for Create Account
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0x8000246B), // 50% opacity
                      Color(0xFF00246B), // 100% opacity
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Add your registration functionality here
                  },
                  // ignore: sort_child_properties_last
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                    child: const Text(
                      'Create Account',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: const Size(double.infinity, 50), // Make button wider
                  ),
                ),
              ),
              const SizedBox(height: 40), // Gap between the button and the text

              // Dashed text and login navigation
              const Text('----------Already have an account ?----------'),

const SizedBox(height: 20),

// Gradient Button for Register after dashed text
Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    gradient: const LinearGradient(
      colors: [
        Color(0x8000246B), // 50% opacity
        Color(0xFF00246B), // 100% opacity
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
  ),
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()), // Navigate to RegisterScreen
      );
    },
    // ignore: sort_child_properties_last
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
      child: const Text(
        'Login',
        style: TextStyle(color: Colors.white),
      ),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      minimumSize: const Size(double.infinity, 50), // Make button wider
    ),
  ),
),

            ],
          ),
        ),
      ),
    );
  }
}
