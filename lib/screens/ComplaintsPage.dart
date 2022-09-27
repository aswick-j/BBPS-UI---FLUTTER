import 'package:flutter/material.dart';
import 'package:flutter_application_bbps/screens/ComplaintTransaction.dart';

import '../widgets/CardWidget.dart';

class ComplaintsPage extends StatefulWidget {
  const ComplaintsPage({Key? key}) : super(key: key);

  @override
  State<ComplaintsPage> createState() => _ComplaintsPageState();
}

class _ComplaintsPageState extends State<ComplaintsPage> {
  @override
  Widget build(BuildContext context) {
    const color = const Color(0xff21084A);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: color,
          leading: Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: GestureDetector(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          leadingWidth: 48.20,
          title: Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Text("Complaints",
                style: TextStyle(fontFamily: 'Rubik', fontSize: 22)),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Icon(
                Icons.search,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0, left: 19, right: 15),
              child: Icon(Icons.filter_alt_outlined,
                  size: 30, color: Colors.white),
            ),
          ]),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                MyCard(),
                MyCard(),
                MyCard(),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 120.10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return SelectTransaction();
                    },
                  ),
                );
              },
              child: SizedBox(
                  width: 356.0,
                  height: 50.0,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Add New Complaint",
                        style: TextStyle(fontFamily: 'Rubik', fontSize: 20),
                      ))),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(33, 8, 74, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
                ),
              ),
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
