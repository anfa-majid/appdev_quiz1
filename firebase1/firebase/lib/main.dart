//Q1
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart'; 
// import 'screens/home_page.dart'; 

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform, 
//   );
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Transactions',
//       theme: ThemeData(primarySwatch: Colors.indigo),
//       home: const HomePage(),
//     );
//   }
// }


//Q2
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'screens/item_detail.dart'; 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        fontFamily: 'Roboto',
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const ItemDetailsScreen(), 
    );
  }
}
