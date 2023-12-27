import 'package:flutter/material.dart';
import 'package:programming_news_app/Home/Home.dart';
import 'package:programming_news_app/News/FullscreenView.dart';
import 'package:programming_news_app/Tools/NewsBase.dart';

class RouteGenerator{

  static Route<dynamic> onGenerateRoutes(RouteSettings settings){
    switch(settings.name){
      case "/":
        return MaterialPageRoute(builder: (context)=>const Home());
      case "/fullscreenView":
        return MaterialPageRoute(builder: (context)=> FullscreenView(news: settings.arguments as NewsBase));
      default:
        return MaterialPageRoute(builder: (context)=>const Home());
    }
  }

}