import 'package:flutter/material.dart';
import 'package:flutter_application_bbps/screens/AddBiller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 150, right: 20, top: 300, bottom: 20),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return AddBiller();
                },
              ),
            );
          },
          child: Text(
            'ADD BILLER',
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
    );
  }
}
