// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$newsAtom =
      Atom(name: 'HomeControllerBase.news', context: context);

  @override
  ObservableList<NewsBase> get news {
    _$newsAtom.reportRead();
    return super.news;
  }

  @override
  set news(ObservableList<NewsBase> value) {
    _$newsAtom.reportWrite(value, super.news, () {
      super.news = value;
    });
  }

  late final _$appBrightnessAtom =
      Atom(name: 'HomeControllerBase.appBrightness', context: context);

  @override
  Brightness get appBrightness {
    _$appBrightnessAtom.reportRead();
    return super.appBrightness;
  }

  @override
  set appBrightness(Brightness value) {
    _$appBrightnessAtom.reportWrite(value, super.appBrightness, () {
      super.appBrightness = value;
    });
  }

  late final _$showGoHomeButtonAtom =
      Atom(name: 'HomeControllerBase.showGoHomeButton', context: context);

  @override
  bool get showGoHomeButton {
    _$showGoHomeButtonAtom.reportRead();
    return super.showGoHomeButton;
  }

  @override
  set showGoHomeButton(bool value) {
    _$showGoHomeButtonAtom.reportWrite(value, super.showGoHomeButton, () {
      super.showGoHomeButton = value;
    });
  }

  late final _$getNewsAsyncAction =
      AsyncAction('HomeControllerBase.getNews', context: context);

  @override
  Future getNews() {
    return _$getNewsAsyncAction.run(() => super.getNews());
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  dynamic changeAppBrightness(Brightness brightness) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.changeAppBrightness');
    try {
      return super.changeAppBrightness(brightness);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeShowGoHomeButton(dynamic value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.changeShowGoHomeButton');
    try {
      return super.changeShowGoHomeButton(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
news: ${news},
appBrightness: ${appBrightness},
showGoHomeButton: ${showGoHomeButton}
    ''';
  }
}
