// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomePageModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageModel on _HomePageModelBase, Store {
  late final _$categoryAtom =
      Atom(name: '_HomePageModelBase.category', context: context);

  @override
  List<dynamic> get category {
    _$categoryAtom.reportRead();
    return super.category;
  }

  @override
  set category(List<dynamic> value) {
    _$categoryAtom.reportWrite(value, super.category, () {
      super.category = value;
    });
  }

  late final _$_HomePageModelBaseActionController =
      ActionController(name: '_HomePageModelBase', context: context);

  @override
  dynamic setcategory({required List<dynamic> category}) {
    final _$actionInfo = _$_HomePageModelBaseActionController.startAction(
        name: '_HomePageModelBase.setcategory');
    try {
      return super.setcategory(category: category);
    } finally {
      _$_HomePageModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
category: ${category}
    ''';
  }
}
