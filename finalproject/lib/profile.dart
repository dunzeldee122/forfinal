import 'package:flutter/material.dart';
import 'petreg.dart'; // Import the PetRegistrationPage

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Button to list your pet
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/petregistration'); // Navigate to PetRegistrationPage
              },
              child: Text('List Your Pet'),
            ),
          ],
        ),
      ),
    );
  }
}
