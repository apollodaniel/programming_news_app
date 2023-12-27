import 'package:flutter/material.dart';
import 'package:programming_news_app/Tools/NewsBase.dart';

class FullscreenView extends StatefulWidget {
  NewsBase news;
  FullscreenView({required this.news});

  @override
  State<FullscreenView> createState() => _FullscreenViewState();
}

class _FullscreenViewState extends State<FullscreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        centerTitle: true,
      ),
    );
  }
}