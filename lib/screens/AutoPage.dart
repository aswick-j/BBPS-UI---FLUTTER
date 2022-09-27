import "package:flutter/material.dart";
import 'package:flutter_application_bbps/screens/AddAutoPay.dart';
import 'package:flutter_application_bbps/widgets/ListViewWidget.dart';

import '../models/Model.dart';

class AutoPage extends StatefulWidget {
  const AutoPage({super.key});

  @override
  State<AutoPage> createState() => _AutoPageState();
}

class _AutoPageState extends State<AutoPage> with TickerProviderStateMixin {
  // final dummylist = List.generate(4, (index) => SampleModel.items[0]);
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    int _selectedIndex = 0;

    print(_selectedIndex);

    Widget _getFAB() {
      if (_selectedIndex == 1) {
        return Container();
      } else {
        return FloatingActionButton.extended(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: Color.fromRGBO(33, 8, 74, 1),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return AddAutopay();
                },
              ),
            );
          },
          label: Text("Add New Autopay"),
        );
      }
    }

    double screenSize = MediaQuery.of(context).size.height;
    double height = screenSize - kToolbarHeight - kBottomNavigationBarHeight;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(33, 8, 74, 1),
          title: Text("Auto Pay"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))]),
      body: Column(
        children: [
          Container(
            child: Align(
              child: TabBar(
                  labelColor: Color.fromRGBO(85, 24, 181, 1),
                  unselectedLabelColor: Color.fromRGBO(147, 149, 190, 1),
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  controller: _tabController,
                  onTap: (int index) {
                    setState(() {
                      _selectedIndex = index;
                      // print(_selectedIndex);
                    });
                  },
                  tabs: [
                    Tab(
                      text: ("All Auto Payments"),
                    ),
                    Tab(text: "Upcoming Scheduled Payments"),
                  ]),
            ),
          ),
          Container(
              width: double.maxFinite,
              height: height / 1.35,
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  // Text("dhduh"),
                  // Text("data")
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: ListView.builder(
                        itemCount: SampleModel.items.length,
                        itemBuilder: (context, index) {
                          return ListViewWidget(
                            item: SampleModel.items[index],
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: ListView.builder(
                        itemCount: SampleModel.items.length,
                        itemBuilder: (context, index) {
                          return ListViewWidget(
                            item: SampleModel.items[index],
                          );
                        }),
                  ),
                ],
              ))
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   selectedItemColor: Color.fromRGBO(33, 8, 74, 1),
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.payment),
      //       label: 'Pay',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.details),
      //       label: 'Details',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.payments),
      //       label: 'Auto Pay',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: 'Settings',
      //     ),
      //   ],
      //   currentIndex: 3,
      // ),
      floatingActionButton: SizedBox(width: width / 1.1, child: _getFAB()),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
