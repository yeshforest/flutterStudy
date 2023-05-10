import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Subpage Example',
        theme: ThemeData(
          backgroundColor: const Color(0xFFE7626C),
          textTheme: const TextTheme(
            headline1: TextStyle(
              color: Color(0xFF232B55),
            ),
          ),
          cardColor: const Color(0xFFF4EDDB),
        ),
      home:const HomeScreen(),
    );
  }
}
