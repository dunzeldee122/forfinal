import 'package:flutter/material.dart';

class PetRegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Registration'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add form fields for pet registration
            Text('Pet Registration Form'),
            TextFormField(
              decoration: InputDecoration(labelText: 'Pet Name'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Pet Type'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle pet registration logic
                // For now, just navigate back to the previous screen
                Navigator.pop(context);
              },
              child: Text('Register Pet'),
            ),
          ],
        ),
      ),
    );
  }
}
