import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';
import 'register.dart';
import 'profile.dart'; // Import the ProfilePage
import 'petreg.dart'; // Import the pet registration page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/register': (context) => RegisterPage(),
        '/profile': (context) => ProfilePage(), // Define the route for ProfilePage
        '/petregistration': (context) => PetRegistrationPage(), // Route for PetRegistrationPage
      },
    );
  }
}
