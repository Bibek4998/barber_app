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
            fontSize: 30,
            color: Colors.blue.shade900,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade100,
      ),
      backgroundColor: Colors.green.shade900,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.9,
          ),
          itemCount: barberTools.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 5,
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.asset(
                        barberTools[index]['image']!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      barberTools[index]['name']!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

final List<Map<String, String>> barberTools = [
  {'name': 'Comb', 'image': 'assets/images/comb.png'},
  {'name': 'Hair Clipper', 'image': 'assets/images/hairClipper.png'},
  {'name': 'Straight Razor', 'image': 'assets/images/straightRazor.png'},
  {'name': 'Hair Dryer', 'image': 'assets/images/dryer.png'},
  {'name': 'Scissors', 'image': 'assets/images/scissors.png'},
  {'name': 'Brush', 'image': 'assets/images/brush.png'},
];
