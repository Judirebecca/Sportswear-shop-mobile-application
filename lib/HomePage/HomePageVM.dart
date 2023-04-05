import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:musicband/BO/bo.dart';
import '../Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import '../Helpers/NavigationHelper/Routes.dart';
import 'HomePageModel.dart';

class HomePageVM extends HomePageModel {

  HomePageVM() {
     category = ["Sports", "Music", "Food", "Art"];
   collectionOfevents = [
      SportsEvents(
          date: "10 June",
          eventimage: "lib/Helpers/Resources/asset/Images/JoinHands.png",
          eventName: "International Band Music Concert",
          address: "36 Guild Street London, UK ",
          centerName: "Gala Convention Center",
          organizerName: "Ashfak Sayem",
          time: "Tuesday, 4:00PM - 9:00PM",
          bookmark: true,
          eventdetails:
              "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase.Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase.Read More..."),
      SportsEvents(
        bookmark: false,
          date: "10 June",
          eventimage: "lib/Helpers/Resources/asset/Images/shoe.png",
          eventName: "Jo Malone London’s Music Concert",
          address: "Radius Gallery • Santa Cruz, CA",
          centerName: "Gala Convention Center",
          organizerName: "Ashfak Sayem",
          time: "Tuesday, 4:00PM - 9:00PM",
          eventdetails:
              "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase.Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase.Read More...")
    ];
   
  }
  // Create a method incrementCounter
  navigationtosecondpage({required int index}) {
    navigationStream.add(NavigatorPush(
        pageConfig: Pages.SecondPageConfig, data: collectionOfevents[index]));
  }
}
