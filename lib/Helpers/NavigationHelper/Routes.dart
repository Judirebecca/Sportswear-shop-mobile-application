// ignore_for_file: constant_identifier_names, unused_import

import '../../HomePage/HomePage.dart';
import '../../SecondPage/SecondPage.dart';
import 'NavigationHelper.dart';

enum Routes {
  HomePage,
  SecondPage
}

class Pages {
  Object? data;
  static final PageConfig HomePageConfig = PageConfig(route: Routes.HomePage, build: (context) => const HomePage(),);
  static final PageConfig SecondPageConfig = PageConfig(route: Routes.SecondPage, build: (context) =>  SecondPage(data: SecondPageConfig.data),);
}
