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
    news = ObservableList.of(await NewsScrapper.scrapAll());
  }

}