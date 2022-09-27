import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/changeTransWidget.dart';

class ChangeComplaint extends StatefulWidget {
  @override
  State<ChangeComplaint> createState() => _ChangeComplaintState();
}

class _ChangeComplaintState extends State<ChangeComplaint> {
  @override
  Widget build(BuildContext context) {
    bool tappedYes = false;
    const color = const Color(0xff21084A);
    const amount = const Color(0xff5518B5);
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
          child: Text("Complaint",
              style: TextStyle(fontFamily: 'Rubik', fontSize: 22)),
        ),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  "Change Transaction",
                  style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 20,
                      color: Color.fromRGBO(33, 8, 74, 1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(left: 15.0, right: 15.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
              side:
                  BorderSide(width: 5, color: Color.fromRGBO(255, 255, 255, 1)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Card(
                    elevation: 2,
                    margin: EdgeInsets.fromLTRB(14, 10, 14, 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(9, 0, 9, 20),
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
                              for (int i = 0; i < 36; i++)
                                Container(
                                  width: 8,
                                  height: 9,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width: 1,
                                        color: i % 2 == 0
                                            ? const Color.fromRGBO(
                                                214, 211, 211, 1)
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
                                  color: amount,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Rubik",
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 120),
                                padding: EdgeInsets.only(top: 12),
                                child: Row(children: [
                                  Text(
                                    "₹ 499.00",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Color.fromRGBO(22, 25, 80, 1),
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Rubik",
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 14),
                                    child: Icon(FontAwesomeIcons.timesCircle,
                                        color: Colors.redAccent),
                                  ),
                                ])),
                          ]),
                        ])),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: new EdgeInsets.only(left: 25, top: 10, bottom: 9),
                      child: Text(
                        "Reason",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromRGBO(91, 93, 136, 1),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Rubik",
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: TextField(
                        decoration: new InputDecoration(
                      labelText: 'Double Payment updated',
                      enabledBorder: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(225, 226, 242, 1))),
                      suffixIcon: Icon(
                        Icons.arrow_drop_down,
                        size: 35.0,
                      ),
                    )),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: new EdgeInsets.only(left: 25, top: 20, bottom: 1),
                      child: Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromRGBO(91, 93, 136, 1),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Rubik",
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: new EdgeInsets.only(
                      left: 20, top: 10, bottom: 19, right: 20),
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 6,
                        decoration: InputDecoration(
                          hintText: "Type here...",
                          enabledBorder: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromRGBO(225, 226, 242, 1))),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.10),
            child: ElevatedButton(
              onPressed: () async {
                final action = await Dialogs.yesAbortDialog(
                    context,
                    'My title',
                    "Success!",
                    "Your compliant has been registered",
                    "successfully",
                    "For future detail track compliant ID :",
                    " QB145458781589585288");
                if (action == DialogAction.yes) {
                  setState(() => tappedYes = true);
                } else {
                  setState(() => tappedYes = false);
                }
              },
              child: SizedBox(
                  width: 356.0,
                  height: 50.0,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Submit",
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
    );
  }
}
