import 'package:flutter/material.dart';

class MostviewedScreen extends StatelessWidget {
  const MostviewedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determine the number of columns based on screen width
        final isWideScreen = constraints.maxWidth > 600; // Example breakpoint
        final crossAxisCount = isWideScreen ? 3 : 2;

        // Adjust card size dynamically based on screen size
        final cardWidth = (constraints.maxWidth / crossAxisCount) - 16;
        final cardHeight = cardWidth * 0.6;

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Add any other widgets above GridView if needed
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: isWideScreen ? 3 : 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    childAspectRatio: cardWidth / (cardHeight + 60),
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image and Favorite Icon
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              child: Image.network(
                                'https://picsum.photos/seed/lake/200/300',
                                height: cardHeight,
                                width: cardWidth,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Positioned(
                              top: 10,
                              right: 10,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: cardWidth,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '\$3000 ',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const Text(
                                        '/ Night',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.star,
                                          size: 16, color: Colors.red),
                                      const SizedBox(width: 4),
                                      Text(
                                        '4.5',
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Luxury Villa with Ocean View',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Entire villa / 5 beds',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );

        // return Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Container(
        //     height: 800,
        //     child: GridView.builder(
        //       itemCount: 10,
        //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: crossAxisCount,
        //         crossAxisSpacing: 8.0,
        //         mainAxisSpacing: 8.0,
        //         childAspectRatio: cardWidth / (cardHeight + 60), // Adjust ratio
        //       ),
        //       itemBuilder: (context, index) {
        //         return Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             // Image and Favorite Icon
        //             Stack(
        //               children: [
        //                 ClipRRect(
        //                   borderRadius:
        //                       const BorderRadius.all(Radius.circular(20)),
        //                   child: Image.network(
        //                     'https://picsum.photos/seed/lake/200/300',
        //                     height: cardHeight,
        //                     width: cardWidth,
        //                     fit: BoxFit.cover,
        //                   ),
        //                 ),
        //                 const Positioned(
        //                   top: 10,
        //                   right: 10,
        //                   child: CircleAvatar(
        //                     backgroundColor: Colors.white,
        //                     child: Icon(
        //                       Icons.favorite_border,
        //                       color: Colors.black,
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //             const SizedBox(height: 8),
        //             SizedBox(
        //               width: cardWidth, // Match text width to image width
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   // Price and Rating
        //                   Row(
        //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                     children: [
        //                       Row(
        //                         children: [
        //                           Text(
        //                             '\$3000 ',
        //                             style: const TextStyle(
        //                               fontSize: 16,
        //                               fontWeight: FontWeight.w700,
        //                             ),
        //                           ),
        //                           const Text(
        //                             '/ Night',
        //                             style: TextStyle(
        //                               fontSize: 14,
        //                               color: Colors.grey,
        //                             ),
        //                           ),
        //                         ],
        //                       ),
        //                       Row(
        //                         children: [
        //                           const Icon(Icons.star,
        //                               size: 16, color: Colors.red),
        //                           const SizedBox(width: 4),
        //                           Text(
        //                             '4.5',
        //                             style: const TextStyle(
        //                               fontSize: 14,
        //                               color: Colors.black,
        //                             ),
        //                           ),
        //                         ],
        //                       ),
        //                     ],
        //                   ),
        //                   const SizedBox(height: 8),
        //                   // Title
        //                   Text(
        //                     'Luxury Villa with Ocean View',
        //                     style: const TextStyle(
        //                       fontSize: 16,
        //                       fontWeight: FontWeight.w600,
        //                     ),
        //                   ),
        //                   const SizedBox(height: 4),
        //                   // Description
        //                   Text(
        //                     'Entire villa / 5 beds',
        //                     style: TextStyle(
        //                       fontSize: 14,
        //                       color: Colors.grey[600],
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ],
        //         );
        //       },
        //     ),
        //   ),
        // );
      },
    );
  }
}
