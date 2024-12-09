// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:responsive/screen/first.dart';

// void main() {
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: Colors.transparent, // Transparent status bar background
//     statusBarIconBrightness:
//         Brightness.dark, // Black icons for time and battery
//     statusBarBrightness:
//         Brightness.light, // Light status bar background for iOS
//   ));
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         textTheme: TextTheme(),
//         brightness: Brightness.light,
//         primarySwatch: Colors.blue,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: Header(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:responsive/screen/home_screen.dart';
import 'package:responsive/screens/main_screen.dart';
import 'package:responsive/screens/widgets/viewed.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(colorScheme: const ColorScheme.light(primary: Colors.blue)),
      home: MainScreen(),
    );
  }
}
