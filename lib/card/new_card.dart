import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:google_fonts/google_fonts.dart';

class Cardr extends StatefulWidget {
  const Cardr({Key? key}) : super(key: key);

  @override
  State<Cardr> createState() => _CardrState();
}

class _CardrState extends State<Cardr> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back, color:Colors.black),
          actions: [],
          title: Text('Add New Card'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(children: [
                  Image.asset('assets/images/Illustration.png',
                      height: 250, width: 250),
                  Column(children: [
                    sola(context, 'CardHolder Name'),
                    sola(context, 'Card Number '),
                    Row(
                      children: [
                        Expanded(child: sola(context, 'Phone Number')),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: sola(context, 'Phone Number'),
                        )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Color(0xff608EE9)),
                          child: Center(
                              child: Text('Add Card',
                                  style: TextStyle(color: Colors.white)))),
                    )
                  ])
                ])),
          ),
        ));
  }
}

Widget sola(BuildContext context, String title) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(title, style:TextStyle(fontWeight:FontWeight.w600)),
    ),
    TextFormField(
      //  controller: cityController,
      obscureText: false,
      decoration: InputDecoration(
        labelText: title,
        labelStyle: TextStyle(
          fontFamily: 'Lexend Deca',
          color: Color(0xFFDBE2E7),
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        hintText: title,
        hintStyle: TextStyle(
          fontFamily: 'Lexend Deca',
          color: Color.fromARGB(255, 66, 78, 89),
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFDBE2E7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFDBE2E7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
      ),
      style: TextStyle(
        fontFamily: 'Lexend Deca',
        color: Color(0xFF14181B),
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    ),
  ]);
}
