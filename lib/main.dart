import 'package:flutter/material.dart';
import 'package:semana91/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PokedexAPP',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
