import 'package:flutter/material.dart';

class BasicHairCuts extends StatelessWidget {
  const BasicHairCuts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Basic Hair Cuts',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green.shade400,
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
          itemCount: hairCuts.length,
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
                        hairCuts[index]['image']!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      hairCuts[index]['name']!,
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

final List<Map<String, String>> hairCuts = [
  {'name': 'Taper Fade', 'image': 'assets/images/taperfade.jpg'},
  {'name': 'Buzz Cut', 'image': 'assets/images/buzzcut.jpg'},
  {'name': 'Undercut', 'image': 'assets/images/undercut.jpg'},
  {'name': 'Pompadour', 'image': 'assets/images/pompadour.jpg'},
  {'name': 'Quiff', 'image': 'assets/images/quiff.jpg'},
  {'name': 'Crew Cut', 'image': 'assets/images/crewCut.jpg'},
  {'name': 'Comb Over', 'image': 'assets/images/combOver.jpg'},
  {'name': 'French Crop', 'image': 'assets/images/frenchCrop.jpg'},
  {'name': 'Slicked Back', 'image': 'assets/images/slickedBack.jpg'},
  {'name': 'Side Part', 'image': 'assets/images/sidePart.jpg'},
  {'name': 'Textured Crop', 'image': 'assets/images/texturedCrop.jpg'},
  {'name': 'Ivy League', 'image': 'assets/images/ivyLeague.jpg'},
  {'name': 'Bowl Cut', 'image': 'assets/images/bowlCut.jpg'},
  {'name': 'Afro', 'image': 'assets/images/afro.jpg'},
  {'name': 'Dreadlocks', 'image': 'assets/images/dreadlocks.jpg'},
];
