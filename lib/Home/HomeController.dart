import 'package:mobx/mobx.dart';
import 'package:programming_news_app/News/NewsBase.dart';
import 'package:programming_news_app/News/NewsScrapper.dart';
part 'HomeController.g.dart';

class HomeController= HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store{

  @observable
  ObservableList<NewsBase> news = ObservableList();

  @action
  getNews()async{
    news.clear();
    news.addAll(await NewsScrapper.scrapTechmundoNews());
    news.addAll(await NewsScrapper.scrapSiliconRepublic());
    news.addAll(await NewsScrapper.scrapOMGLinux());
    news.addAll(await NewsScrapper.scrapInfoWorld());
  }

}