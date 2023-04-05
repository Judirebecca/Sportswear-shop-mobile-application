import 'package:flutter/material.dart';
import 'package:musicband/BO/bo.dart';
import 'package:musicband/Helpers/NavigationHelper/NavigationHelper.dart';

import '../Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'SecondPageVM.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.data});
  final SportsEvents data;
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late final SecondPageVM _instance = SecondPageVM(value: widget.data);

  @override
  void initState() {
    super.initState();
    _instance.navigationStream.stream.listen((event) {
      if (event is NavigatorPop) {
        context.pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        leading: IconButton(onPressed: _instance.navigationtohomepage,
        icon: Icon(Icons.arrow_back),),
        title: Text("Event Details"),
        actions: const [Icon(Icons.bookmark), SizedBox(width: 24)],
      ),
      body: ListView(
        children: [Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
            ),
            Image.asset(
              "lib/Helpers/Resources/asset/Images/concert.png",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 38),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    _instance.eventdata.eventName,
                    style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff120D26),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              
            ),
            SizedBox(height:23),
            Padding(
              padding: const EdgeInsets.only(left:21),
              child: Row(
                children: [
                  Container(width: 48,height: 48,decoration: BoxDecoration(color: Color(0xfff0ecfc), borderRadius: BorderRadius.circular(12)),
                  child: Center(child: Image.asset("lib/Helpers/Resources/asset/Images/Calendar.png", width:22, height: 25,))),
                  SizedBox(width: 14,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("14 December, 2021", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                      Text(_instance.eventdata.time, style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 18,),
            Padding(
              padding: const EdgeInsets.only(left:21),
              child: Row(
                children: [
                  Container(width: 48,height: 48,decoration: BoxDecoration(color: Color(0xfff0ecfc), borderRadius: BorderRadius.circular(12)),
                  child: Center(child: Image.asset("lib/Helpers/Resources/asset/Images/Location.png", width:22, height: 25,color: Color(0xfff5669FF),))),
                  SizedBox(width: 14,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_instance.eventdata.centerName, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                      Text(_instance.eventdata.address, style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 18,),
            Padding(
              padding: const EdgeInsets.only(left:21),
              child: Row(
                children: [
                  Container(width: 44,height: 44,decoration: BoxDecoration(color: Color(0xfff0ecfc), borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("lib/Helpers/Resources/asset/Images/ashfak.png")),
                  SizedBox(width: 14,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_instance.eventdata.organizerName, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                      Text("Organizer", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                    ],
                  ),
                  const SizedBox(width: 150,),
                  Container(width: 60,height: 28,decoration: BoxDecoration(color: const Color(0xfff0ecfc),borderRadius: BorderRadius.circular(7)),child: Center(child: Text("Follow", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400, color: Color(0xff5669FF)),)),)
                ],
              ),
            ),
            SizedBox(height: 23,),
            Padding(
              padding: const EdgeInsets.only(left: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About Event",  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                  SizedBox(height: 8,),
                  Text(_instance.eventdata.eventdetails, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                ],
              ),
            )
          ],
        ),
      ]),
      floatingActionButton: Container(
        width: 271,
        height: 58,
        child: FloatingActionButton(backgroundColor: Color(0xff5669FF),onPressed: (){}, child: Padding(
          padding: const EdgeInsets.only(left: 61,right: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Buy Ticket \$120",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),
              CircleAvatar(radius: 15,backgroundColor: Color(0xff3D56F0),child: Icon(Icons.arrow_forward,color: Colors.white,),)
            ],
          ),
        ),),
      ),
    );
  }
}
