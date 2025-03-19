import 'package:flutter/material.dart';
import 'package:bookappp/pages/barber_tutorial/screen/barbering_tools.dart';
import 'package:bookappp/pages/barber_tutorial/screen/basic_hair_cuts.dart';
import 'package:bookappp/pages/barber_tutorial/screen/hair_styling.dart';

class BarberTutorial extends StatelessWidget {
  const BarberTutorial({super.key});

  void navigateToPage(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Barbering Tutorials',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.red[100],
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "Begin your journey with us and enhance your skills in barbering. Below is a beginner-to-pro tutorial guide.",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                wordSpacing: 2,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => navigateToPage(context, const BarberingTools()),
              child: BarberTutorialBox(
                text: 'Barbering Tools',
                color: Colors.red.shade400,
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => navigateToPage(context, const BasicHairCuts()),
              child: BarberTutorialBox(
                text: 'Basic Hair Cuts',
                color: Colors.blue.shade900,
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => navigateToPage(context, const HairStyling()),
              child: BarberTutorialBox(
                text: 'Hair Styling Techniques',
                color: Colors.green.shade600,
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => navigateToPage(context, const HairStyling()),
              child: BarberTutorialBox(
                text: 'Face Washing',
                color: Colors.green.shade600,
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => navigateToPage(context, const HairStyling()),
              child: BarberTutorialBox(
                text: 'Hair Colouring',
                color: Colors.green.shade600,
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => navigateToPage(context, const HairStyling()),
              child: BarberTutorialBox(
                text: 'Beard Trimming',
                color: Colors.green.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BarberTutorialBox extends StatelessWidget {
  final String text;
  final Color color;

  const BarberTutorialBox({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
