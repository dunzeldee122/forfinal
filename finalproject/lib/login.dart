// login.dart
import 'package:flutter/material.dart';
import 'register.dart';
import 'home.dart'; // Import the HomePage
import 'package:mssql_connection/mssql_connection.dart'; // Import the MSSQL connection package

class LoginPage extends StatelessWidget {
  final MssqlConnection mssqlConnection;

  const LoginPage({Key? key, required this.mssqlConnection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text fields for username and password
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
              SizedBox(height: 20.0),
              // Log in button
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage(mssqlConnection: mssqlConnection)), // Pass mssqlConnection here
                  );
                },
                child: Text('Log In'),
              ),
              SizedBox(height: 20.0),
              // "Don't have an account? Sign up" text
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage(mssqlConnection: mssqlConnection)),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
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
