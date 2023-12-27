import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:programming_news_app/News/FullscreenViewController.dart';
import 'package:programming_news_app/Tools/NewsBase.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FullscreenView extends StatefulWidget {
  NewsBase news;
  FullscreenView({required this.news});

  @override
  State<FullscreenView> createState() => _FullscreenViewState();
}

class _FullscreenViewState extends State<FullscreenView> {

  FullscreenViewController fullscreenViewController = FullscreenViewController();
  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000));


  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    controller.loadRequest(Uri.parse(widget.news.url));
    controller.setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
          fullscreenViewController.changeProgess(progress);
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          return NavigationDecision.navigate;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.news.title),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          WebViewWidget(
            controller: controller,
          ),
          Observer(
            builder: (context){
              if(fullscreenViewController.progress != 100) return Container(
                  height: 3,
                  width: MediaQuery.of(context).size.width / fullscreenViewController.progress,
                  color: Theme.of(context).colorScheme.primary,
              );
              else return Container();
            }
          )
        ],
      ),
    );
  }
}