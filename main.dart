import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:practice_m9/mybag.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Bag App',
      home: MyBagPage(),
    );
  }
}
