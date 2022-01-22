import 'package:flutter/material.dart';
import 'package:sales_managing_app/fifth_screen.dart';
import 'package:sales_managing_app/fourth_screen.dart';
import 'package:sales_managing_app/profile_screen.dart';
import 'package:sales_managing_app/second_screen.dart';
import 'package:sales_managing_app/seventh_screen.dart';
import 'package:sales_managing_app/sixth_screen.dart';
import 'package:sales_managing_app/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SecondScreen(),
      routes: {
        'ThirdScreen': (context) => const ThirdScreen(),
        'SixthScreen': (context) => const SixthScreen(),
        'FourthScreen': (context) => const FourthScreen(),
        'FifthScreen': (context) => FifthScreen(),
        'ProfileScreen': (context) => const ProfileScreen(),
        'SeventhScreen': (context) => SeventhScreen(),
      },
    );
  }
}
