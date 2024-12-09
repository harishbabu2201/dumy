// import 'package:flutter/material.dart';
// import 'package:responsive/widget/ad.dart';
// import 'package:responsive/widget/mostviewd/mostViewed.dart';
// import 'package:responsive/widget/popular.dart';
// import 'package:responsive/widget/recommed.dart';
// import 'package:responsive/widget/search.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: LayoutBuilder(
//           builder: (context, constraints) {
//             double width = constraints.maxWidth;
//             return Center(
//               child: ListView(
//                 children: <Widget>[
//                   const SizedBox(height: 20),
//                   Container(
//                     color: const Color(0xFFF8F7FC),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 25),
//                       child: Text(
//                         'Explore the world! By \n Travelling',
//                         style: TextStyle(
//                           fontSize:
//                               width < 600 ? 24 : 32, // Responsive font size
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SearchBarWidget(),
//                   const SizedBox(height: 40),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 25),
//                     child: Text(
//                       'Popular Locations',
//                       style: TextStyle(
//                         fontSize: width < 600 ? 24 : 32, // Responsive font size
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   const PopularLocations(),
//                   const SizedBox(height: 40),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 25),
//                     child: Text(
//                       'Recommended',
//                       style: TextStyle(
//                         fontSize: width < 600 ? 24 : 32, // Responsive font size
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   const CarouselWidget(),
//                   const SizedBox(height: 20),
//                   const HostingAdCard(),
//                   const SizedBox(height: 40),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 25),
//                     child: Text(
//                       'Most Viewed',
//                       style: TextStyle(
//                         fontSize: width < 600 ? 24 : 32, // Responsive font size
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   const MostViewedPage(),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
