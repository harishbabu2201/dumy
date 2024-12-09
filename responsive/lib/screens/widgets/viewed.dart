// import 'package:flutter/material.dart';

// class Viewed extends StatelessWidget {
//   const Viewed({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String, dynamic>> mostViewedData = [
//       {
//         'imageUrl': 'https://picsum.photos/seed/lodge/200/300',
//         'price': 120,
//         'rating': 4.5,
//         'title': 'Carinthia Lake see Breakfast',
//         'description': 'Private room / 4 beds',
//       },
//       {
//         'imageUrl': 'https://picsum.photos/seed/hills/200/300',
//         'price': 150,
//         'rating': 4.8,
//         'title': 'Mountain View Cabin',
//         'description': 'Entire cabin / 2 beds',
//       },
//       {
//         'imageUrl': 'https://picsum.photos/seed/mumbai/200/300',
//         'price': 200,
//         'rating': 4.7,
//         'title': 'City Apartment',
//         'description': 'Entire apartment / 3 beds',
//       },
//     ];

//     return LayoutBuilder(builder: (context, constraints) {
//       final maxWidth = constraints.maxWidth;
//       final isMobile = maxWidth <= 600;
//       final isTablet = maxWidth > 600 && maxWidth <= 1024;

//       return Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: GridView.builder(
//           shrinkWrap: true,
//           physics: NeverScrollableScrollPhysics(),
//           itemCount: mostViewedData.length, // Number of items
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: isMobile
//                 ? 1
//                 : isTablet
//                     ? 2
//                     : 3, // Adjust number of columns
//             crossAxisSpacing: 10.0,
//             mainAxisSpacing: 10.0,
//             childAspectRatio: isMobile
//                 ? 1.1
//                 : isTablet
//                     ? 1
//                     : 1.16, // Adjust aspect ratio
//           ),
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Image and Favorite Icon
//                   Stack(
//                     children: [
//                       ClipRRect(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(20)),
//                         child: Image.network(
//                           mostViewedData[index]['imageUrl'],
//                           height: MediaQuery.of(context).size.height * 0.25,
//                           width: maxWidth,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       const Positioned(
//                         top: 10,
//                         right: 10,
//                         child: CircleAvatar(
//                           backgroundColor: Colors.white,
//                           child: Icon(
//                             Icons.favorite_border,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 8),
//                   SizedBox(
//                     // width: cardWidth, // Match text width to image width
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // Price and Rating
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: [
//                                 Text(
//                                   '\$${mostViewedData[index]['price']}',
//                                   style: const TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                                 const Text(
//                                   '/ Night',
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 const Icon(Icons.star,
//                                     size: 16, color: Colors.red),
//                                 const SizedBox(width: 4),
//                                 Text(
//                                   mostViewedData[index]['rating'].toString(),
//                                   style: const TextStyle(
//                                     fontSize: 14,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 8),
//                         // Title
//                         Text(
//                           mostViewedData[index]['title'],
//                           style: const TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         const SizedBox(height: 4),
//                         // Description
//                         Text(
//                           mostViewedData[index]['description'],
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.grey[600],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       );
//     });
//   }
// }

import 'package:flutter/material.dart';
import 'package:responsive/screens/widgets/reuseble.dart';

class Viewed extends StatelessWidget {
  const Viewed({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> mostViewedData = [
      {
        'imageUrl': 'https://picsum.photos/seed/lodge/200/300',
        'price': 120,
        'rating': 4.5,
        'title': 'Carinthia Lake see Breakfast',
        'description': 'Private room / 4 beds',
      },
      {
        'imageUrl': 'https://picsum.photos/seed/hills/200/300',
        'price': 150,
        'rating': 4.8,
        'title': 'Mountain View Cabin',
        'description': 'Entire cabin / 2 beds',
      },
      {
        'imageUrl': 'https://picsum.photos/seed/mumbai/200/300',
        'price': 200,
        'rating': 4.7,
        'title': 'City Apartment',
        'description': 'Entire apartment / 3 beds',
      },
    ];

    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;
      final isMobile = maxWidth <= 600;
      final isTablet = maxWidth > 600 && maxWidth <= 1024;

      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: mostViewedData.length, // Number of items
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isMobile
                ? 1
                : isTablet
                    ? 2
                    : 3, // Adjust number of columns
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: isMobile
                ? 1.1
                : isTablet
                    ? 1
                    : 1.16, // Adjust aspect ratio
          ),
          itemBuilder: (context, index) {
            return Reuseble(
              imageUrl: mostViewedData[index]['imageUrl'] ?? '',
              price: mostViewedData[index]['price'], // Pass directly
              rating: mostViewedData[index]['rating'], // Pass directly
              title: mostViewedData[index]['title'] ?? 'No Title',
              description:
                  mostViewedData[index]['description'] ?? 'No Description',
            );
          },
        ),
      );
    });
  }
}
