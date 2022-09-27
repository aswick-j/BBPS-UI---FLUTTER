import 'package:flutter/material.dart';
import 'package:flutter_application_bbps/screens/AddBillerV2.dart';

import '../models/Model.dart';
import '../models/Sample.dart';
import '../widgets/AddBillerWidget.dart';

class AddBiller extends StatefulWidget {
  const AddBiller({super.key});

  @override
  State<AddBiller> createState() => _AddBillerState();
}

class _AddBillerState extends State<AddBiller> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(33, 8, 74, 1),
        title: Text("Add Biller"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt_outlined))
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              child:
                  // MyStatefulWidget()
                  ListView.builder(
                      itemCount: SampleModel.items.length,
                      itemBuilder: (context, index) {
                        return MyStatefulWidget(
                          item: SampleModel.items[index],
                        );
                      }),
            ),
            Positioned(
              top: width * 1.6,
              left: 10,
              right: 10,
              child: SizedBox(
                width: 400,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return AddBillerV2();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Next',
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(33, 8, 74, 1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
