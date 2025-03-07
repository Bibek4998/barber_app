import 'package:bookappp/pages/barber_tutorial/widget/barber_tutorial_box.dart';
import 'package:flutter/material.dart';

class BarberTutorial extends StatelessWidget {
  const BarberTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Barbering Tutorials',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.red[75],
      body: Padding(
        padding: const EdgeInsets.all(25.00),
        child: Column(
          children: [
            Text(
              "Begin your journey with us and enhance your skills in the barbering. Below is barber's beginner to pro tutorial is provided.",
            ),
            BarberTutorialBox(text: 'Barbering Tools', color: Colors.red),
            SizedBox(height: 16),
            BarberTutorialBox(text: 'Basic Hair Cuts', color: Colors.blue),
            SizedBox(height: 16),
            BarberTutorialBox(
              text: 'Hair Styling Techniques',
              color: Colors.green,
            ),
            SizedBox(height: 16),
            BarberTutorialBox(
              text: 'Basics of Makeup and Makeup Tools',
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
