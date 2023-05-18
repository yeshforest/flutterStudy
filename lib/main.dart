import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //widget의 Key를  부모에게 전달

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       home:HomeScreen(),
    );
  }
}
