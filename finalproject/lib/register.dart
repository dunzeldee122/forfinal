import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Handle registration logic
            // After successful registration, navigate back to previous screen (login)
            Navigator.pop(context);
          },
          child: Text('Register'),
        ),
      ),
    );
  }
}
