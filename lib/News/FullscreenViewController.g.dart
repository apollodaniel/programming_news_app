// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FullscreenViewController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FullscreenViewController on FullscreenViewControllerBase, Store {
  late final _$progressAtom =
      Atom(name: 'FullscreenViewControllerBase.progress', context: context);

  @override
  int get progress {
    _$progressAtom.reportRead();
    return super.progress;
  }

  @override
  set progress(int value) {
    _$progressAtom.reportWrite(value, super.progress, () {
      super.progress = value;
    });
  }

  late final _$FullscreenViewControllerBaseActionController =
      ActionController(name: 'FullscreenViewControllerBase', context: context);

  @override
  dynamic changeProgess(dynamic value) {
    final _$actionInfo = _$FullscreenViewControllerBaseActionController
        .startAction(name: 'FullscreenViewControllerBase.changeProgess');
    try {
      return super.changeProgess(value);
    } finally {
      _$FullscreenViewControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
progress: ${progress}
    ''';
  }
}
