import 'package:clinica_leger/routes/routes.dart';
import 'package:clinica_leger/screens/conta.dart';
import 'package:clinica_leger/screens/login.dart';
import 'package:clinica_leger/screens/teste.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ClinicaLeger());

class ClinicaLeger extends StatelessWidget {
  const ClinicaLeger({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: routes,
      title: 'Clínica Leger',
      home: const LoginPage(),
    );
  }
}