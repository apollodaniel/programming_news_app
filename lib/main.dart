import 'package:flutter/material.dart';
import 'package:programming_news_app/Home/Home.dart';
import 'package:programming_news_app/Tools/RouteGenerator.dart';

void main() {
  runApp(const ProgrammerNewsApp());
}

class ProgrammerNewsApp extends StatelessWidget {


  const ProgrammerNewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      onGenerateRoute:(settings) => RouteGenerator.onGenerateRoutes(settings),
      theme: ThemeData(
        colorSchemeSeed: Colors.red,
        brightness: Brightness.dark,
      ),
    );
  }
}
