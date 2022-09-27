import 'package:flutter/material.dart';

class MyBills extends StatefulWidget {
  const MyBills({super.key});

  @override
  State<MyBills> createState() => _MyBillsState();
}

class _MyBillsState extends State<MyBills> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("MyBills Page"),
    );
    ;
  }
}
