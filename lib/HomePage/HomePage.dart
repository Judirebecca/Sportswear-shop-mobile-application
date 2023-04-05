import 'package:flutter/material.dart';
import 'package:musicband/Helpers/NavigationHelper/NavigationHelper.dart';

import '../Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import '../Helpers/NavigationHelper/Routes.dart';
import 'HomePageVM.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageVM _instance = HomePageVM();

  @override
  void initState() {
    super.initState();
    _instance.navigationStream.stream.listen((event) {
      if (event is NavigatorPush) {
        context.push(pageConfig: Pages.SecondPageConfig, data: event.data);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4A43EC),
          title: Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("lib/Helpers/Resources/asset/Images/AppBar.png",
                    color: Colors.white, width: 18, height: 18),
                Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Current Location ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Image.asset(
                            "lib/Helpers/Resources/asset/Images/bottom.png",
                            color: Colors.white,
                            width: 14,
                            height: 8),
                      ],
                    ),
                    const Text(
                      "New Yourk, USA",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Color(0xff5D56F3),
                  child: Image.asset(
                      "lib/Helpers/Resources/asset/Images/bell.png",
                      width: 15,
                      height: 12.5),
                )
              ],
            ),
          ),
        ),
        body: SafeArea(
            child: Stack(
          children: [
            Container(
              height: 142,
              decoration: const BoxDecoration(
                  color: Color(0xff4A43EC),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(33),
                      bottomRight: Radius.circular(33))),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: SingleChildScrollView(
                child: Column(
                    // shrinkWrap: true,
                    children: [
                      ListTile(
                        leading: Image.asset(
                          "lib/Helpers/Resources/asset/Images/search.png",
                          width: 16,
                          height: 16,
                        ),
                        title: const Text(
                          "|  Search...",
                          style: TextStyle(
                              fontSize: 20.33,
                              fontWeight: FontWeight.w200,
                              color: Color(0xffFFFFFF)),
                        ),
                        trailing: Chip(
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            backgroundColor: const Color(0xff5D56F3),
                            avatar: Image.asset(
                                "lib/Helpers/Resources/asset/Images/Filter.png"),
                            label: const Text(
                              "Filters",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      const SizedBox(
                        height: 37,
                      ),
                      SizedBox(
                        width: 350,
                        height: 39,
                        child: ListView.builder(
                          itemCount: _instance.category.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Chip(
                                  side: BorderSide.none,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  backgroundColor: _instance
                                              .category[index] ==
                                          "Art"
                                      ? Color(0xff46CDFB)
                                      : _instance.category[index] ==
                                              "Sports"
                                          ? Color(0xffF0635A)
                                          : _instance.category[
                                                      index] ==
                                                  "Music"
                                              ? Color(0xffF59762)
                                              : Color(0xff29D697),
                                  avatar: Image.asset(_instance
                                              .category[index] ==
                                          "Art"
                                      ? "lib/Helpers/Resources/asset/Images/Paint.png"
                                      : _instance.category[index] ==
                                              "Sports"
                                          ? "lib/Helpers/Resources/asset/Images/Ball.png"
                                          : _instance.category[
                                                      index] ==
                                                  "Music"
                                              ? "lib/Helpers/Resources/asset/Images/Music.png"
                                              : "lib/Helpers/Resources/asset/Images/Group 18214.png"),
                                  label: Text(
                                    _instance.category[index],
                                    style: TextStyle(color: Colors.white),
                                  )),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Upcoming Events",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                          Row(
                            children: [
                              const Text("See All "),
                              Image.asset(
                                "lib/Helpers/Resources/asset/Images/seeall.png",
                                width: 6.4,
                                height: 9,
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //////-------------///////
                      SizedBox(
                        width: 400,
                        height: 300,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _instance.collectionOfevents.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 24),
                                child: SizedBox(
                                  width: 255,
                                  height: 400,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    color: Colors.white,
                                    elevation: 3,
                                    child: InkWell(
                                      onTap: () => _instance
                                          .navigationtosecondpage(index: index),
                                      child: Column(
                                        children: [
                                          Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                child: Image.asset(
                                                  _instance
                                                      .collectionOfevents[index]
                                                      .eventimage,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                        width: 45,
                                                        height: 45,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7)),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              _instance
                                                                  .collectionOfevents[
                                                                      index]
                                                                  .date
                                                                  .toString(),
                                                              style: const TextStyle(
                                                                  color: Color(
                                                                      0xffF0635A),
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                            ),
                                                          ],
                                                        )),
                                                    Container(
                                                      width: 30,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(7)),
                                                      child:  Center(
                                                        child: 
                                                          _instance.collectionOfevents[index].bookmark == true?Icon(Icons.bookmark, color:
                                                              Color(0xffF0635A)):Icon(Icons.bookmark_outline, color:
                                                              Color(0xffF0635A)),
                                                          
                                                        ),
                                                      ),
                                                    
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 8,),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 16, right: 23),
                                            child: Text(
                                              _instance
                                                  .collectionOfevents[index]
                                                  .eventName
                                                  .toString(),
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: Row(
                                              children: [
                                                CircleAvatar(
                                                  child: Image.asset(
                                                      "lib/Helpers/Resources/asset/Images/lady.png"),
                                                ),
                                                const SizedBox(width: 8),
                                                CircleAvatar(
                                                  child: Image.asset(
                                                      "lib/Helpers/Resources/asset/Images/men.png"),
                                                ),
                                                const SizedBox(width: 10),
                                                const Text(
                                                  "+20 Going",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff3F38DD)),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 16,
                                                right: 16,
                                                bottom: 16),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  "lib/Helpers/Resources/asset/Images/Location.png",
                                                  width: 16,
                                                  height: 16,
                                                  color:
                                                      const Color(0xff716E90),
                                                ),
                                                const SizedBox(width: 11),
                                                Text(
                                                  _instance
                                                      .collectionOfevents[index]
                                                      .address
                                                      .toString(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff2B2849)),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                      const SizedBox(
                        height: 46,
                      ),
                      Card(
                          color: const Color(0xffd8fcfc),
                          elevation: 3,
                          child: Column(
                            children: [
                              Stack(children: [
                                Image.asset(
                                  "lib/Helpers/Resources/asset/Images/gift.png",
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 18, top: 13),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Invite your friends",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 13,
                                      ),
                                      const Text(
                                        "Get \$20 for ticket",
                                        style: TextStyle(
                                            color: Color(0xff484D70),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        height: 13,
                                      ),
                                      Container(
                                          width: 72,
                                          height: 32,
                                          decoration: BoxDecoration(
                                              color: const Color(0xff00F8FF),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: const Center(
                                              child: Text(
                                            "INVITE",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          )))
                                    ],
                                  ),
                                ),
                              ])
                            ],
                          ))
                    ]),
              ),
            ),
          ],
        )));
  }
}
