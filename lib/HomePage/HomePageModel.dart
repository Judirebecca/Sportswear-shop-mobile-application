
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../BO/bo.dart';
import '../Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
part 'HomePageModel.g.dart';

class HomePageModel = _HomePageModelBase with _$HomePageModel, NavigationMixin;

abstract class _HomePageModelBase with Store{
  List <SportsEvents> collectionOfevents = [];

  @observable
  List category = [];
  @action
  setcategory({required List category})=> this.category = category;
  
}