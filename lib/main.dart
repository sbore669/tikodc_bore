import 'package:flutter/material.dart';
import 'acceuil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Acceuil(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
