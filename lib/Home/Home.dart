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
                  padding: const EdgeInsets.all(12.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: ()=>launchUrlString(element.url),
                    child: AspectRatio(
                      aspectRatio: 1.2/1,
                      child: Ink(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                element.title.trim(), 
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                            ),
                            if(element.image != "") Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: NetworkImage(element.image),
                                    fit: BoxFit.cover
                                  )
                                ),
                              )
                            )
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