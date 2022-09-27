import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int _value = 1;

class TransactionCard extends StatelessWidget {
  // Generate some dummy data
  final List<Map<String, dynamic>> _items = List.generate(
      1,
      (index) => {
            "title": "+91 9952407272",
            "subtitle": "₹ 499.00",
          });

  TransactionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [TransactionCard1(), TransactionCard2(), TransactionCard3()],
      ),
    );
  }
}

class TransactionCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(12.0, 0, 12.0, 0),
      child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
                "https://s3-ap-southeast-1.amazonaws.com/bsy/iportal/images/airtel-logo-white-text-vertical.jpg"),
          ),
          contentPadding: EdgeInsets.only(
            left: 2.0,
            right: 2.0,
            top: 10.0,
          ),
          title: Padding(
            padding: EdgeInsets.only(bottom: 7),
            child: Text(
              "+91 9952407272",
              style: TextStyle(
                fontSize: 15.0,
                color: Color.fromRGBO(147, 149, 190, 1),
                fontWeight: FontWeight.w400,
                fontFamily: "Rubik",
              ),
            ),
          ),
          subtitle: Row(
            children: [
              Text(
                "₹ 499.00",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromRGBO(22, 25, 80, 1),
                  fontWeight: FontWeight.w600,
                  fontFamily: "Rubik",
                ),
              ),
              Positioned(
                right: 10.9,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 3),
                    child: CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.white,
                      child:
                          Icon(FontAwesomeIcons.timesCircle, color: Colors.red),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50),
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
            ],
          ),
          trailing: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Radio(
              fillColor: MaterialStateColor.resolveWith(
                  (states) => Colors.indigo.shade900),
              groupValue: _value,
              value: 1,
              onChanged: (value) {},
            ),
          )),
    );
  }
}

class TransactionCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7.0, bottom: 5),
      child: ListTile(
          leading: Image.network(
              "https://cdn0.iconfinder.com/data/icons/circle-icons/512/vodafone.png"),
          contentPadding: EdgeInsets.only(
            left: 2.0,
            right: 2.0,
            top: 10.0,
          ),
          title: Padding(
            padding: EdgeInsets.only(bottom: 8, top: 1),
            child: Text(
              "+91 9952407272",
              style: TextStyle(
                fontSize: 15.0,
                color: Color.fromRGBO(147, 149, 190, 1),
                fontWeight: FontWeight.w400,
                fontFamily: "Rubik",
              ),
            ),
          ),
          subtitle: Row(
            children: [
              Text(
                "₹ 499.00",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromRGBO(22, 25, 80, 1),
                  fontWeight: FontWeight.w600,
                  fontFamily: "Rubik",
                ),
              ),
              Positioned(
                right: 10.9,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 3),
                    child: CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.white,
                      child:
                          Icon(FontAwesomeIcons.timesCircle, color: Colors.red),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: Text(
                  "9 June 2022",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromRGBO(147, 149, 190, 1),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Rubik",
                  ),
                ),
              ),
            ],
          ),
          trailing: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 19, 0),
            child: Radio(
              groupValue: _value,
              value: 2,
              onChanged: (value) {},
            ),
          )),
    );
  }
}

class TransactionCard3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListTile(
        leading: Image(
            image: NetworkImage(
                "http://www.pngimagesfree.com/LOGO/J/Jio/Reliance-Jio-Logo-PNG-HD.png")),
        contentPadding: EdgeInsets.only(
          left: 2.0,
          right: 2.0,
          top: 10.0,
        ),
        title: Padding(
          padding: EdgeInsets.only(bottom: 7),
          child: Text(
            "+91 9952407272",
            style: TextStyle(
              fontSize: 15.0,
              color: Color.fromRGBO(147, 149, 190, 1),
              fontWeight: FontWeight.w400,
              fontFamily: "Rubik",
            ),
          ),
        ),
        subtitle: Row(
          children: [
            Text(
              "₹ 499.00",
              style: TextStyle(
                fontSize: 16.0,
                color: Color.fromRGBO(22, 25, 80, 1),
                fontWeight: FontWeight.w600,
                fontFamily: "Rubik",
              ),
            ),
            Positioned(
              right: 10.9,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 3),
                  child: CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Colors.white,
                    child:
                        Icon(FontAwesomeIcons.timesCircle, color: Colors.red),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text(
                "05 Apr 2022",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color.fromRGBO(147, 149, 190, 1),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Rubik",
                ),
              ),
            ),
          ],
        ),
        trailing: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: Radio(
            groupValue: _value,
            value: 3,
            onChanged: (value) {},
          ),
        ),
      ),
    );
  }
}
