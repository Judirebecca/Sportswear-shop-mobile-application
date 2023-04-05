import 'package:mobx/mobx.dart';
import 'package:musicband/BO/bo.dart';

import '../Helpers/NavigationHelper/Mixin/NavigationMixin.dart';

part 'SecondPageModel.g.dart';

class SecondPageModel = _SecondPageModelBase
    with _$SecondPageModel, NavigationMixin;

abstract class _SecondPageModelBase with Store {
  SportsEvents eventdata = SportsEvents(date: " ", eventimage: " ", eventName: " ", address: " ", centerName: " ", organizerName: " ", time: " ", eventdetails: " ",bookmark: false);
  void setvalue({required SportsEvents eventdata})=> this.eventdata = eventdata;
}