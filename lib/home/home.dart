import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'dart:async';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

var _bottomNavIndex = 0; //default index of a first screen

late AnimationController _animationController;
late Animation<double> animation;
late CurvedAnimation curve;

final iconList = <IconData>[
  Icons.home,
  Icons.money,
  Icons.shop,
  Icons.brightness_7,
];

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    final systemTheme = SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor: Color(0xff373A36),
      systemNavigationBarIconBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(systemTheme);

    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    curve = CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.5,
        1.0,
        curve: Curves.fastOutSlowIn,
      ),
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curve);

    Future.delayed(
      Duration(seconds: 1),
      () => _animationController.forward(),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(300)),
          backgroundColor: Color(0xff7A70E6),
          child: Container(child: SvgPicture.asset('assets/svg/Shape.svg')),
          onPressed: () {},
          //params
        ),
        bottomNavigationBar: AnimatedBottomNavigationBar(
          height:78,
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          //other params
        ),
        appBar: AppBar(
            leading: Icon(Icons.arrow_back_ios, color: Colors.grey),
            actions: [
              SvgPicture.asset('assets/svg/Icon__Profile (1).svg'),
            ],
            backgroundColor: Color(0xffFFFFFF),
            elevation: 0),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 30),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            child: Image.asset('assets/images/Group 20406.png',
                                width: MediaQuery.of(context).size.width)),
                      ),
                      Container(
                          height: 192,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text('Frequently Used',
                                      style: TextStyle(
                                          color: Color(0xff2F394E),
                                          fontWeight: FontWeight.w600)),
                                ),
                                Container(
                                    height: 121,
                                    child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          yes(Colors.white, 'Mobile Recharge',
                                              'assets/svg/56 Copy 11.svg'),
                                          yes(Colors.white, 'Bill Payment',
                                              'assets/svg/2.svg'),
                                          yes(Colors.white, 'Bank  Transfer',
                                              'assets/svg/56 Copy 13.svg'),
                                          yes(Colors.white, 'Request  Money',
                                              'assets/svg/56 Copy 14.svg'),
                                        ]))
                              ])),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Service',
                            style: TextStyle(
                                color: Color(0xff2F394E),
                                fontWeight: FontWeight.w600)),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                    //  color: Color(0xffFBFBFB),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          30), //border corner radius
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(
                                              233, 235, 235, 235),
                                          //color of shadow
                                          spreadRadius: 6, //spread radius
                                          blurRadius: 20, // blur radius
                                          offset: Offset(1,
                                              1), // changes position of shadow
                                          //first paramerter of offset is left-right
                                          //second parameter is top to down
                                        ),
                                        //you can set more BoxShadow() here
                                      ],
                                    ),
                                    height: 100,
                                    width: 155,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            SvgPicture.asset(
                                                'assets/svg/Icon (1).svg'),
                                            Text('Open Account',
                                                style: TextStyle(
                                                    color: Color(0xff2F394E),
                                                    fontWeight:
                                                        FontWeight.w600))
                                          ]),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                    height: 100,
                                    width: 155,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          30), //border corner radius
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(
                                              233, 235, 235, 235),
                                          //color of shadow
                                          spreadRadius: 6, //spread radius
                                          blurRadius: 20, // blur radius
                                          offset: Offset(1,
                                              1), // changes position of shadow
                                          //first paramerter of offset is left-right
                                          //second parameter is top to down
                                        ),
                                        //you can set more BoxShadow() here
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/svg/Icon.svg',
                                            ),
                                            Text('Manage Cards',
                                                style: TextStyle(
                                                    color: Color(0xff2F394E),
                                                    fontWeight:
                                                        FontWeight.w600))
                                          ]),
                                    )),
                              ),
                            )
                          ])
                    ])),
          ),
        ));
  }
}

Widget card() {
  return ListView(scrollDirection: Axis.horizontal, children: []);
}

Widget yes(Color color1, String string, String svg) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
        height: 111,
        width: 67,
        child: Column(children: [
          Container(width: 67, color: color1, child: SvgPicture.asset(svg)),
          Text(string, style: TextStyle(color: Color(0xff2F394E), fontSize: 14))
        ])),
  );
}
