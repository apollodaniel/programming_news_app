import 'package:mobx/mobx.dart';
part 'FullscreenViewController.g.dart';

class FullscreenViewController= FullscreenViewControllerBase with _$FullscreenViewController;

abstract class FullscreenViewControllerBase with Store{

  @observable
  int progress = 0;

  @action
  changeProgess(value) {
    progress = value;
    print(progress);
  }

}