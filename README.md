# Programming news
This is an app made in [Flutter](https://flutter.dev/) that get programming news from some websites using the [programming_news_scrapper](https://github.com/apollodaniel/programming_news_scrapper)

Some of the websites scrapped are:
- [TechMundo](https://www.tecmundo.com.br/programacao)
- [Silicon Republic](https://www.siliconrepublic.com/topics/coding/)
- [OMG Linux](https://www.omglinux.com/)
- [Info World](https://www.infoworld.com/category/programming-languages/)

Some features are:
- Display recent news
- Inapp change dark/light mode saving user preference with [shared_preferences](https://pub.dev/packages/shared_preferences)
- Inapp news preview (and external preview)


# Screenshots
### Dark mode
#### Home screen
<img src="github_images/home_print_dark.png" alt="homescreen dark mode" width=200/>

#### Website preview screen
<img src="github_images/preview_dark.png" alt="homescreen dark mode" width=200/>

### Light mode
#### Home screen
<img src="github_images/home_print_light.png" alt="homescreen light mode" width=200/>

#### Website preview screen
<img src="github_images/preview_light.png" alt="homescreen light mode" width=200/>

# Dependencies
- [chaleno](https://pub.dev/packages/chaleno) - Webscraping library
- [mobx](https://pub.dev/packages/mobx) - State management
- [flutter_mobx](https://pub.dev/packages/flutter_mobx) - Mobx auxiliary
- [url_launcher](https://pub.dev/packages/url_launcher) - Launching urls
- [webview_flutter](https://pub.dev/packages/webview_flutter) - Internal webview browser
- [top_snackbar_flutter](https://pub.dev/packages/top_snackbar_flutter) - Display some messages
- [shared_preferences](https://pub.dev/packages/shared_preferences) - Save persistent data
- [provider](https://pub.dev/packages/provider) - Help reusing classes