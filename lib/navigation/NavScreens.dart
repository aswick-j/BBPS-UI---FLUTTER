import "package:flutter/material.dart";
import 'package:flutter_application_bbps/screens/AutoPage.dart';
import 'package:flutter_application_bbps/screens/Home.dart';
import 'package:flutter_application_bbps/screens/HomeBbps.dart';
import 'package:flutter_application_bbps/screens/Settings.dart';
import 'package:flutter_application_bbps/screens/MyBills.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int _selectedIndex = 0;
  void navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  static const List _pages = [
    HomeBbps(),
    HomePage(),
    MyBills(),
    AutoPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: navigationBar,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Color.fromRGBO(33, 8, 74, 1),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.payment), label: "BBPS"),
            BottomNavigationBarItem(icon: Icon(Icons.money), label: "MyBills"),
            BottomNavigationBarItem(icon: Icon(Icons.paypal), label: "AutoPay"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings")
          ]),
    ));
  }
}
