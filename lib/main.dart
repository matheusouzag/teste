import 'package:clinica_leger/screens/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(ClinicaLeger());

class ClinicaLeger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: LoginPage(),
    );
  }
}