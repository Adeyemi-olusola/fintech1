import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:second/card/graph.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

TabController? tab;

class _CardDetailsState extends State<CardDetails>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    tab = TabController(
      length: 3,
      vsync: this,
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.black)),
          actions: [
            Container(
                child: Icon(
              MdiIcons.account,
            ))
          ],
          title: Text('Crd Details'),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Color(0xffE7F3FF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Current Balance',
                                style: TextStyle(
                                    color: Color(0xff608EE9), fontSize: 16)),
                            Text('222.12',
                                style: TextStyle(
                                    color: Color(0xff608EE9),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        height: 30,
                        width: 300,
                        child: DefaultTabController(
                          length: 3,
                          child: TabBar(
                            controller: tab,
                            unselectedLabelColor: Colors.black,
                            labelColor: Colors.white,
                            unselectedLabelStyle: TextStyle(color: Colors.grey),
                            indicator: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            tabs: [
                              Text('DAYS', style: TextStyle(fontSize: 11)),
                              Text('MONTHS', style: TextStyle(fontSize: 11)),
                              Text('YAERS', style: TextStyle(fontSize: 11)),
                            ],
                          ),
                        ),
                      ),
                    ),

                    LineChartSample1(),
                    Text('Transactions History'),
                    trac(context, Icon(Icons.arrow_forward), 'UBER Ride',
                        '27-apr | 08:25pm'),
                    trac(context, Icon(Icons.arrow_forward), 'UBER Ride',
                        '27-apr | 08:25pm')
                  ]),
            )));
  }
}

Widget trac(BuildContext context, Icon icon, String first, String second) {
  return Column(
    children: [
      Container(
        height: 42,
        width: MediaQuery.of(context).size.width,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color.fromARGB(255, 222, 215, 215),
            ),
            height: 42,
            width: 42,
            child: icon,
          ),
          Column(children: [
            Text(first, style: TextStyle(color: Colors.black)),
            Text(second,
                style: TextStyle(color: Color.fromARGB(255, 200, 200, 200)))
          ]),
          Text('4040',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500))
        ]),
      ),
      SizedBox(height: 20),
    ],
  );
}
