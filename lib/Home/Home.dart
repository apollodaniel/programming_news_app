import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:programming_news_app/Home/HomeController.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
      appBar: AppBar(
        title: Text("Latest news"),
        centerTitle: true,
      ),
      body: Observer(
        builder: (context) {
          return ListView.builder(
            itemCount: homeController.news.length,
            itemBuilder: (context, index) => 
              ListTile(
                title: Text(homeController.news[index].title),
                leading: homeController.news[index].image == "" ? null : Image.network(homeController.news[index].image),
                onTap: () => launchUrlString(homeController.news[index].url),
              ),
          );
        }
      ),
    );
  }
}