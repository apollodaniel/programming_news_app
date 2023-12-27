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

  late final _$getNewsAsyncAction =
      AsyncAction('HomeControllerBase.getNews', context: context);

  @override
  Future getNews() {
    return _$getNewsAsyncAction.run(() => super.getNews());
  }

  @override
  String toString() {
    return '''
news: ${news}
    ''';
  }
}
