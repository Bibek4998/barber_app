import 'package:bookappp/pages/barber_tutorial/screen/beard_trimming.dart';
import 'package:bookappp/pages/barber_tutorial/screen/face_washing.dart';
import 'package:bookappp/pages/barber_tutorial/screen/hair_coloring.dart';
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
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            GestureDetector(
              onTap: () => navigateToPage(context, const BarberingTools()),
              child: BarberTutorialBox(
                text: 'Barbering Tools',
                color: Colors.red.shade400,
              ),
            ),
            GestureDetector(
              onTap: () => navigateToPage(context, const BasicHairCuts()),
              child: BarberTutorialBox(
                text: 'Basic Hair Cuts',
                color: Colors.blue.shade900,
              ),
            ),
            GestureDetector(
              onTap: () => navigateToPage(context, const HairStyling()),
              child: BarberTutorialBox(
                text: 'Hair Styling Techniques',
                color: Colors.green.shade600,
              ),
            ),
            GestureDetector(
              onTap: () => navigateToPage(context, const FaceWashing()),
              child: BarberTutorialBox(
                text: 'Face Washing',
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () => navigateToPage(context, const HairColoring()),
              child: BarberTutorialBox(
                text: 'Hair Colouring',
                color: Colors.blueGrey.shade600,
              ),
            ),
            GestureDetector(
              onTap: () => navigateToPage(context, const BeardTrimming()),
              child: BarberTutorialBox(
                text: 'Beard Trimming',
                color: Colors.lightBlue.shade600,
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
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
