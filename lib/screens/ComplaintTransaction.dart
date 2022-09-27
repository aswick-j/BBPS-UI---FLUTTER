import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/littleWidgets.dart';
import '../widgets/transactionCard.dart';
import 'changeTransaction.dart';

class SelectTransaction extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SelectTransactionState();
  }
}

class _SelectTransactionState extends State<SelectTransaction> {
  @override
  Widget build(BuildContext context) {
    const color = const Color(0xff21084A);
    const textColor = const Color(0xff161950);
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
                child: Icon(
                  FontAwesomeIcons.filter,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ]),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 201, 10),
              child: Text(
                "Select Transaction",
                style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 20,
                    color: textColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            MyDivider(),
            TransactionCard1(),
            MyDivider(),
            TransactionCard2(),
            MyDivider(),
            TransactionCard3(),
            MyDivider(),
            Container(
              margin: const EdgeInsets.only(top: 250.10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return ChangeComplaint();
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
                          "Next",
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
        ));
  }
}
