import 'package:flutter/material.dart';

class BarberTutorialBox extends StatelessWidget {
  final String text;
  const BarberTutorialBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2.0),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Center(child: Text(text, style: TextStyle(fontSize: 18))),
    );
  }
}
