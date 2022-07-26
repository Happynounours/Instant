import 'package:flutter/material.dart';
import 'package:instant/connexion/Login.dart';
import 'package:instant/widget/gradients_background.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
            body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 108, 187, 228),
                  Color.fromARGB(255, 94, 14, 185),
                ],
              )),
            child: Login(),

          ),
        ),
      ),
      );

  }
}