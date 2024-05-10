import 'package:flutter/material.dart';
import 'package:mssql_connection/mssql_connection.dart';
import 'login.dart'; // Import the login page

void main() async {
  // Ensure Flutter framework is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Database connection setup
  MssqlConnection mssqlConnection = MssqlConnection.getInstance();

  // Attempt to establish connection to MSSQL database
  bool isConnected = await mssqlConnection.connect(
    ip: '192.168.0.31',
    port: '3306',
    databaseName: 'pet',
    username: 'root',
    password: '',
    timeoutInSeconds: 15,
  );

  if (isConnected) {
    print('Connected to MSSQL database');
  } else {
    print('Failed to connect to MSSQL database');
    // Handle connection failure
  }

  // Run the Flutter application
  runApp(MyApp(mssqlConnection: mssqlConnection));
}

class MyApp extends StatelessWidget {
  final MssqlConnection mssqlConnection;

  const MyApp({Key? key, required this.mssqlConnection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(mssqlConnection: mssqlConnection), // Set LoginPage as the initial route
    );
  }
}
