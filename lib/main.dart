import 'package:flutter/material.dart';
import 'package:toku_language_learning_app/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toku App',
      home: home_page(),
    );
  }
}
