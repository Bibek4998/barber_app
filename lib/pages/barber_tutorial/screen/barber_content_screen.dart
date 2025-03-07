import 'package:flutter/material.dart';

class BarberContent extends StatelessWidget {
  const BarberContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Barbering Tools',
          style: TextStyle(
            fontSize: 40,
            color: Colors.blue.shade900,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      backgroundColor: Colors.blue.shade100,
      body: Padding(padding: const EdgeInsets.all(20),
    )
    )
  }
}
