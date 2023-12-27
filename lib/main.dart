import 'package:flutter/material.dart';
import 'package:programming_news_app/Home/Home.dart';

void main() {
  runApp(const ProgrammerNewsApp());
}

class ProgrammerNewsApp extends StatelessWidget {


  const ProgrammerNewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home()
    );
  }
}