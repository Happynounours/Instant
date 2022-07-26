import 'package:flutter/material.dart';

class Gradientsbackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: const Center(
            child: Text(
              'Hello!',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
