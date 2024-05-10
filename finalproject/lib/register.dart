import 'package:flutter/material.dart';
import 'package:mssql_connection/mssql_connection.dart'; // Import the MSSQL connection package

class RegisterPage extends StatelessWidget {
  final MssqlConnection mssqlConnection;

  const RegisterPage({super.key, required this.mssqlConnection});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController addressController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 10),
            TextField(
              controller: firstNameController,
              decoration: const InputDecoration(labelText: 'First Name'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: lastNameController,
              decoration: const InputDecoration(labelText: 'Last Name'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: phoneNumberController,
              decoration: const InputDecoration(labelText: 'Phone Number'),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 10),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            TextField(
              controller: addressController,
              decoration: const InputDecoration(labelText: 'Address'),
              maxLines: null, // Allow multiple lines for address
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _registerUser(
                  context,
                  usernameController.text,
                  passwordController.text,
                  firstNameController.text,
                  lastNameController.text,
                  phoneNumberController.text,
                  emailController.text,
                  addressController.text,
                );
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }

  void _registerUser(
      BuildContext context,
      String username,
      String password,
      String firstName,
      String lastName,
      String phoneNumber,
      String email,
      String address,
      ) async {
    try {
      String query = "INSERT INTO pet.user (username, password, fname, lname, phone, email, address) "
          "VALUES ('$username', '$password', '$firstName', '$lastName', '$phoneNumber', '$email', '$address')";

      await mssqlConnection.writeData(query);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Your account has been created')),
      );

      Navigator.pop(context); // Navigate back to the previous screen (login)
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }
}
