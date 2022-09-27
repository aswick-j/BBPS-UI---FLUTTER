import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.fromLTRB(14, 10, 14, 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
          padding: EdgeInsets.fromLTRB(19, 0, 19, 20),
          child: Column(children: [
            ListTile(
              horizontalTitleGap: 16.0,
              leading: Image(
                  image: NetworkImage(
                      "http://www.pngimagesfree.com/LOGO/J/Jio/Reliance-Jio-Logo-PNG-HD.png")),
              contentPadding: EdgeInsets.only(
                left: 2.0,
                right: 2.0,
                top: 10.0,
              ),
              subtitle: Text('Amount Debited 2 Times',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromRGBO(22, 25, 80, 1),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Rubik",
                  )),
              title: Padding(
                padding: EdgeInsets.only(bottom: 7),
                child: Text(
                  '+91 9952407272',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromRGBO(147, 149, 190, 1),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Rubik",
                  ),
                ),
              ),
            ),
            Row(
              // Dashed line
              children: [
                for (int i = 0; i < 39; i++)
                  Container(
                    width: 8,
                    height: 9,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: i % 2 == 0
                              ? const Color.fromRGBO(214, 211, 211, 1)
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            Row(// Dashed line
                children: [
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "1 day ago",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromRGBO(147, 149, 190, 1),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Rubik",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 179),
                padding: EdgeInsets.only(top: 12),
                child: Badge(
                  padding:
                      EdgeInsets.only(left: 10, right: 8, top: 3, bottom: 3),
                  toAnimate: false,
                  shape: BadgeShape.square,
                  badgeColor: Colors.greenAccent.shade100,
                  borderRadius: BorderRadius.circular(8),
                  badgeContent: Text('Resolved',
                      style: TextStyle(
                          color: Colors.greenAccent.shade700, fontSize: 15)),
                ),
              ),
            ]),
          ])),
    );
  }
}
