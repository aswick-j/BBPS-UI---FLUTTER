import 'package:flutter/material.dart';
import 'package:flutter_application_bbps/screens/ComplaintsPage.dart';
import 'package:flutter_application_bbps/screens/HistoryPage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: 120,
              child: AppBar(
                title: Text('Others'),
                backgroundColor: Color.fromRGBO(33, 8, 74, 1),
                elevation: 0.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 68, 16, 0),
              child: SizedBox(
                height: 100,
                child: Card(
                  child: _buildBody(),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(16, 200, 16, 16),
                child: Text(
                  "Menus",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return HistoryPage();
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 240, 16, 16),
                child: Stack(
                  children: [
                    Positioned(
                        child: Material(
                      child: Container(
                        height: 100,
                        width: 490,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )),
                    Positioned(
                        top: 19,
                        left: 20,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(85, 24, 181, 1)
                                .withOpacity(0.10),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )),
                    Positioned(
                        top: 32,
                        left: 35,
                        child: Icon(
                          Icons.history,
                          size: 30.0,
                          color: Color.fromRGBO(85, 24, 181, 1),
                        )),
                    Positioned(
                      top: 20,
                      left: 100,
                      child: Text(
                        "History",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(22, 25, 80, 1),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                      top: 45,
                      left: 100,
                      right: 30,
                      child: Text(
                        "Click here to view the transactions",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(147, 149, 190, 1),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Positioned(
                      top: 25,
                      left: 300,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios),
                            color: Colors.grey.shade400,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return ComplaintsPage();
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 360, 16, 16),
                child: Stack(
                  children: [
                    Positioned(
                        child: Material(
                      child: Container(
                        height: 100,
                        width: 490,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )),
                    Positioned(
                        top: 19,
                        left: 20,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(85, 24, 181, 1)
                                .withOpacity(0.10),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )),
                    Positioned(
                        top: 32,
                        left: 35,
                        child: Icon(
                          Icons.assignment_outlined,
                          size: 30,
                          color: Color.fromRGBO(85, 24, 181, 1),
                        )),
                    Positioned(
                      top: 20,
                      left: 100,
                      child: Text(
                        "Complaints",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(22, 25, 80, 1),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                      top: 45,
                      left: 100,
                      right: 30,
                      child: Text(
                        "Click here to add or view registered Complaints",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(147, 149, 190, 1),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Positioned(
                      top: 25,
                      left: 300,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios),
                            color: Colors.grey.shade400,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: width * 0.22,
                left: width * 0.13,
                child: SizedBox(
                    height: 60,
                    child: Image(
                        image: NetworkImage(
                            "https://i0.wp.com/findisha.com/wp-content/uploads/2020/10/equitas.png?w=512&ssl=1")))),
            Positioned(
                top: width * 0.22,
                left: width * 0.57,
                child: SizedBox(
                    height: 60,
                    child: Image(
                        image: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Bharat_BillPay_logo.svg/330px-Bharat_BillPay_logo.svg.png")))),
          ],
        ),
      ),
    );
  }
}

_buildBody() {
  return Padding(padding: const EdgeInsets.all(0.0), child: Container());
}
