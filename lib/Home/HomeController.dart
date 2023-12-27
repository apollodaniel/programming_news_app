import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:programming_news_app/Tools/NewsBase.dart';
import 'package:programming_news_app/Tools/NewsScrapper.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'HomeController.g.dart';

class HomeController= HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store{

  @observable
  ObservableList<NewsBase> news = ObservableList();

  @observable
  Brightness appBrightness = Brightness.dark;

  SharedPreferences? sh;

  initSharedPreferences()async{
    sh = await SharedPreferences.getInstance();
    getConfig();
  }

  @action
  changeAppBrightness(Brightness brightness){
    appBrightness = brightness;
    saveConfig();
  }

  saveConfig()async{
    if(sh == null) await initSharedPreferences();
    await sh!.setBool("isDarkMode", appBrightness == Brightness.dark);
  }

  getConfig()async{
    if(sh == null) await initSharedPreferences();
    bool isDarkMode = sh!.getBool("isDarkMode") ?? true;
    changeAppBrightness(isDarkMode ? Brightness.dark : Brightness.light);
  }

  @action
  getNews()async{
    news.clear();
    news.addAll(await NewsScrapper.scrapTechmundoNews());
    news.addAll(await NewsScrapper.scrapSiliconRepublic());
    news.addAll(await NewsScrapper.scrapOMGLinux());
    news.addAll(await NewsScrapper.scrapInfoWorld());
  }

}