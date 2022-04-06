import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AllCard extends StatefulWidget {
  const AllCard({Key? key}) : super(key: key);

  @override
  State<AllCard> createState() => _AllCardState();
}

class _AllCardState extends State<AllCard> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
       child: Column(
          children:[
            Image.asset('assets/images/Group 20406.png'),
            Image.asset('assets/images/Group 20409.png'),

          ]
        )
      )
      
      
    );
  }
}