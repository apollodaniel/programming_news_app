import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:programming_news_app/Home/HomeController.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeController homeController = HomeController();
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Observer(
          builder: (context) {
            return Text(homeController.news.map((element) => element.toJson()).toList().toString());
          }
        ),
      ),
    );
  }
}