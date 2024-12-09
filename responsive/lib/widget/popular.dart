import 'package:flutter/material.dart';

class PopularLocations extends StatelessWidget {
  const PopularLocations({super.key});

  @override
  Widget build(BuildContext context) {
    // A single multidimensional array containing location names and image URLs
    final List<List<String>> locations = [
      ['India', 'https://picsum.photos/seed/india/160/240'],
      ['Moscow', 'https://picsum.photos/seed/moscow/160/240'],
      ['USA', 'https://picsum.photos/seed/usa/160/240'],
      ['Canada', 'https://picsum.photos/seed/canada/160/240'],
      ['Japan', 'https://picsum.photos/seed/japan/160/240'],
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 240,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Stack(
                  children: [
                    Image.network(
                      locations[index][1],
                      fit: BoxFit.cover,
                      width: 160,
                      height: 240,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        } else {
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      (loadingProgress.expectedTotalBytes ?? 1)
                                  : null,
                            ),
                          );
                        }
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Icon(Icons.error, color: Colors.red),
                        );
                      },
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text(
                          locations[index]
                              [0], // Fetch the location name from the array
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.black,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
