import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:programming_news_app/Home/Home.dart';
import 'package:programming_news_app/Home/HomeController.dart';
import 'package:programming_news_app/Tools/RouteGenerator.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    Provider(
      create: (context) => HomeController(),
      child: const ProgrammerNewsApp(),
    )
  );
}

class ProgrammerNewsApp extends StatefulWidget {
  const ProgrammerNewsApp({super.key});

  @override
  State<ProgrammerNewsApp> createState() => _ProgrammerNewsAppState();
}

class _ProgrammerNewsAppState extends State<ProgrammerNewsApp> {

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, value, child) => 
        Observer(
          builder: (context) {
            return MaterialApp(
              initialRoute: "/",
              onGenerateRoute:(settings) => RouteGenerator.onGenerateRoutes(settings),
              theme: ThemeData(
                colorSchemeSeed: Colors.red,
                brightness: value.appBrightness,
              ),
            );
          }
        ),
    );
  } 
}