import "package:flutter/material.dart";

enum SingingCharacter { lafayette, jefferson }

class AddAutopay extends StatefulWidget {
  const AddAutopay({super.key});

  @override
  State<AddAutopay> createState() => _AddAutopayState();
}

class _AddAutopayState extends State<AddAutopay> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  String? _dropDownValue;
  String? _dropDownValue2;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(33, 8, 74, 1),
          title: Text("Auto Pay")),
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Positioned(
                      child: Material(
                    child: Container(
                      height: 190,
                      width: 490,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )),
                  Positioned(
                      // top: 19,
                      // left: 17,
                      top: width * 0.05,
                      left: width * 0.04,
                      child: SizedBox(
                          height: 50,
                          // height: height - 730,
                          child: Image(
                              image: NetworkImage(
                                  "https://4.bp.blogspot.com/-aEu_Y9121Aw/TkKgwHoKsEI/AAAAAAAAANo/8C5E6ZmCQhk/s320/bsnl-logo.jpg")))),
                  Positioned(
                    // left: 90,
                    // top: 20,
                    top: width * 0.05,
                    left: width * 0.22,
                    child: Text(
                      " Tamil Nadu Electric Board ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(22, 25, 80, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    // top: 47,
                    // left: 90,
                    top: width * 0.12,
                    left: width * 0.22,
                    child: Text(
                      "(TNEB)",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(147, 149, 190, 1),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Positioned(
                      top: width * 0.35,
                      left: width * 0.01,
                      right: width * 0.01,
                      child: Material(
                        child: Container(
                          height: 2,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(225, 226, 242, 1),
                            // borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      )),
                  Positioned(
                      top: width * 0.235,
                      left: width * 0.01,
                      right: width * 0.01,
                      child: Material(
                        child: Container(
                          height: 2,
                          width: 340,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(225, 226, 242, 1),
                            // borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      )),
                  Positioned(
                    // top: 105,
                    // left: 10,
                    top: width * 0.27,
                    left: width * 0.03,
                    // right: width * 0.01,
                    child: Text(
                      "Customer No :",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(147, 149, 190, 1),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Positioned(
                    // top: 105,
                    // left: 220,
                    top: width * 0.27,
                    left: width * 0.52,
                    right: width * 0.03,
                    child: Text(
                      "1006983669874123",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(91, 93, 136, 1),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Positioned(
                    // top: 150,
                    // left: 10,
                    top: width * 0.39,
                    left: width * 0.03,
                    child: Text(
                      "Biller Name :",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(147, 149, 190, 1),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Positioned(
                    // top: 150,
                    // left: 250,
                    top: width * 0.39,
                    left: width * 0.52,
                    right: width * 0.03,
                    child: Text(
                      "Selena Gomez",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(91, 93, 136, 1),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 230, bottom: 0),
              child: Stack(
                children: [
                  Positioned(
                      child: Material(
                    child: Container(
                      height: 410,
                      width: 490,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )),
                  Positioned(
                    // top: 10,
                    // left: 10,
                    top: width * 0.02,
                    left: width * 0.03,
                    child: Text(
                      "Maximum Amount",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(91, 93, 136, 1),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Positioned(
                    // top: 10,
                    // left: 250,
                    top: width * 0.02,
                    left: width * 0.61,
                    right: width * 0.02,
                    child: Text(
                      "Limit: ₹50,000",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(85, 24, 181, 1),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 35, bottom: 0),
                    child: TextFormField(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                      decoration: const InputDecoration(
                          hintText: "140",
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                    ),
                  ),
                  Positioned(
                    // top: 100,
                    // left: 10,
                    top: width * 0.26,
                    left: width * 0.03,
                    child: Text(
                      "Date of Payment",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(91, 93, 136, 1),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 130, bottom: 0),
                      child: DropdownButtonFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding:
                                EdgeInsets.fromLTRB(10, 10, 10, 10)),
                        hint: _dropDownValue == null
                            ? Text('1st of every month')
                            : Text(
                                _dropDownValue!,
                                // style: TextStyle(color: Colors.blue),
                              ),
                        isExpanded: true,
                        iconSize: 30.0,
                        // style: TextStyle(color: Colors.blue),
                        items: [
                          '1st of every month',
                          '2nd of every month',
                          '3rd of every month'
                        ].map(
                          (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(val),
                            );
                          },
                        ).toList(),
                        onChanged: (val) {
                          setState(
                            () {
                              _dropDownValue = val;
                            },
                          );
                        },
                      )),
                  Positioned(
                    // top: 200,
                    // left: 10,
                    top: width * 0.51,
                    left: width * 0.03,
                    child: Text(
                      "Activate Auto Payment From",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(91, 93, 136, 1),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 230, bottom: 0),
                      child: DropdownButtonFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding:
                                EdgeInsets.fromLTRB(10, 10, 10, 10)),
                        hint: _dropDownValue2 == null
                            ? Text('Immediately')
                            : Text(
                                _dropDownValue2!,
                                // style: TextStyle(color: Colors.blue),
                              ),
                        isExpanded: true,
                        iconSize: 30.0,
                        // style: TextStyle(color: Colors.blue),
                        items: [
                          'Immediately',
                          'After 12 Hours',
                          'After 24 Hours'
                        ].map(
                          (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(val),
                            );
                          },
                        ).toList(),
                        onChanged: (val) {
                          setState(
                            () {
                              _dropDownValue2 = val;
                            },
                          );
                        },
                      )),
                  Positioned(
                    // top: 300,
                    // left: 10,
                    top: width * 0.79,
                    left: width * 0.03,
                    child: Text(
                      "We Pay Your Bills Once:",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(91, 93, 136, 1),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0, right: 20, top: 320, bottom: 0),
                    child: ListTile(
                      title: const Text(
                        'Every Month',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(22, 25, 80, 1),
                            fontWeight: FontWeight.w600),
                      ),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0, right: 20, top: 350, bottom: 0),
                    child: ListTile(
                      title: const Text(
                        'Every Two Month',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(91, 93, 136, 1),
                            fontWeight: FontWeight.w400),
                      ),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 660, bottom: 10),
              child: Stack(
                children: [
                  Positioned(
                      child: Material(
                    child: Container(
                      height: 240,
                      width: 490,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )),
                  Positioned(
                    // top: 20,
                    // left: 10,
                    top: width * 0.05,
                    left: width * 0.03,
                    child: Text(
                      "Select Payment Account",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(22, 25, 80, 1),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0, right: 20, top: 40, bottom: 0),
                    child: ListTile(
                      title: const Text(
                        '1006983669874123',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(22, 25, 80, 1),
                            fontWeight: FontWeight.w600),
                      ),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0, right: 20, top: 75, bottom: 0),
                    child: ListTile(
                      title: const Text(
                        '32568741589651478',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(91, 93, 136, 1),
                            fontWeight: FontWeight.w400),
                      ),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Positioned(
                      // top: 140,
                      // left: 25,
                      top: width * 0.36,
                      left: width * 0.05,
                      right: width * 0.05,
                      child: Material(
                        child: Container(
                          height: 76,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(248, 243, 255, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      )),
                  Positioned(
                    // top: 155,
                    // left: 50,
                    top: width * 0.40,
                    left: width * 0.13,
                    right: width * 0.13,
                    child: Text(
                      "By  continuing, you agree to accept our",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(91, 93, 136, 1),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Positioned(
                    // top: 180,
                    // left: 50,
                    top: width * 0.465,
                    left: width * 0.13,
                    right: width * 0.13,
                    child: Text(
                      "Terms and Conditions",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(85, 24, 181, 1),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              child: Padding(
            padding: const EdgeInsets.only(
                left: 20, right: 20, top: 920, bottom: 20),
            child: SizedBox(
              width: 170,
              height: 50,
              child: ElevatedButton(
                onPressed: () => _dialogBuilder(context),
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Color.fromRGBO(33, 8, 74, 1)),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(248, 243, 255, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(
                                color: Color.fromRGBO(33, 8, 74, 1))))),
              ),
            ),
          )),
          Container(
              child: Padding(
            padding: const EdgeInsets.only(
                left: 200, right: 20, top: 920, bottom: 20),
            child: SizedBox(
              width: 170,
              height: 50,
              child: ElevatedButton(
                onPressed: () => _dialogBuilder(context),
                child: Text(
                  'Add',
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color.fromRGBO(33, 8, 74, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ))),
              ),
            ),
          ))
        ]),
      ),
    );
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        insetPadding:
            const EdgeInsets.only(left: 40, right: 40, top: 0, bottom: 0),
        title: Column(
          children: [
            SizedBox(
              height: 120,
              child: Image(
                  image: NetworkImage(
                      "https://i.postimg.cc/bN6H0K5q/Untitled.png")),
            ),
            const Text(
              'Success!',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
        content: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'Auto Pay for ',
            style: TextStyle(
              color: Color.fromRGBO(91, 93, 136, 1),
              fontSize: 15,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: 'Tamil Nadu Electric Board (TNEB)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color.fromRGBO(85, 24, 181, 1))),
              TextSpan(text: ' has been activated sucessfully'),
            ],
          ),
        ),
        //const Text(
        //   'Auto Pay for Tamil Nadu Electric\nBoard (TNEB) has been activated\nsucessfully.',
        //   style: TextStyle(color: Color.fromRGBO(85, 24, 181, 1)),
        // ),
        actions: <Widget>[
          SizedBox(
            width: 170,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Okay',
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Color.fromRGBO(33, 8, 74, 1)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ))),
            ),
          ),
        ],
        actionsAlignment: MainAxisAlignment.center,
      );
    },
  );
}
