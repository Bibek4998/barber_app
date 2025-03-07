import 'package:flutter/material.dart';
import 'package:bookappp/pages/barber_tutorial/screen/barber_tutorial.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Barber',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            wordSpacing: 2.2,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.green[200],
      ),
      backgroundColor: Colors.blue[300],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Start Your Career in Barber',
              style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Learn Cutting and styling the hairstyles and shape your future in the Barbering. We will provide you step by step tutorial in Barbering. Start learning the barber skills with experienced Barber instructor. ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BarberTutorial()),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: Text('Explore Tutorials'),
            ),
          ],
        ),
      ),
    );
  }
}
