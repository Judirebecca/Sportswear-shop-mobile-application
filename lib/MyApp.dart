import 'package:flutter/material.dart';

import 'package:musicband/SecondPage/SecondPage.dart';

import 'Helpers/NavigationHelper/NavigationHelper.dart';
import 'Helpers/NavigationHelper/Routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRoute(initialPage: Pages.HomePageConfig, initialPageData: null).onGenerateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      
    );
  }
}
