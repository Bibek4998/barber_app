import 'package:bookappp/pages/barber_tutorial/screen/barber_content_screen.dart';
import 'package:flutter/material.dart';

class BarberTutorialBox extends StatelessWidget {
  final String text;
  final Color color;
  const BarberTutorialBox({super.key, required this.text, required this.color});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BarberContent()),
        );
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(child: Text(text, style: TextStyle(fontSize: 18))),
      ),
    );
  }
}
