import 'package:flutter/material.dart';

class HairStyling extends StatelessWidget {
  const HairStyling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hair Styling', style: TextStyle(color: Colors.red)),
      ),
    );
  }
}
