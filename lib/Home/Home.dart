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
        actions: [
          IconButton(onPressed: ()=>homeController.getNews(), icon: Icon(Icons.update))
        ],
      ),
      body: Observer(
        builder: (context) {
          return SingleChildScrollView(
            child: Wrap(
              children: homeController.news.map(
                (element) => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () => Navigator.pushNamed(context, "/fullscreenView", arguments: element),
                    child: AspectRatio(
                      aspectRatio: 1.2/1,
                      child: Ink(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(element.image),
                            fit: BoxFit.cover
                          ),
                          
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              right: 0,
                              left: 0,
                              child: Container(
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    element.title.trim(), 
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ),
                                padding: EdgeInsets.only(bottom: 16, left: 16, right: 16, top: 16),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.background.withOpacity(0.8),
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12))
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ), 
              ).toList()
            ),
          );
        }
      ),
    );
  }
}