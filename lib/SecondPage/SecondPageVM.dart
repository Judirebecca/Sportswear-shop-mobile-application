import 'package:musicband/BO/bo.dart';

import '../Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'SecondPageModel.dart';

class SecondPageVM extends SecondPageModel{
  SecondPageVM({required SportsEvents value}){
    setvalue(eventdata: value);
  }
  void navigationtohomepage(){
    navigationStream.add(NavigatorPop());
  }
}