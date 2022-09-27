import 'package:flutter/material.dart';

import '../models/Model.dart';

class ListViewWidget extends StatelessWidget {
  final Item item;

  const ListViewWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // print(height);
    // print(width);

    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Stack(
          children: [
            Positioned(
                child: Material(
              child: Container(
                height: 190,
                // height: height / 3.2,
                // width: 490,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )),
            // Positioned(
            //   top: 17,
            //   left: 15,
            //   child: Card(
            //       elevation: 5.0,
            //       // shadowColor: Colors.grey,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(2.0)),
            //       child: Container(
            //         height: 50,
            //         width: 50,
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(2.0),
            //             image: DecorationImage(
            //               image: NetworkImage(item.image),
            //               fit: BoxFit.cover,
            //             )),
            //       )),
            // ),
            Positioned(
                // top: 19,
                // left: 17,
                top: width * 0.05,
                left: width * 0.04,
                child: SizedBox(
                    height: 50,
                    // height: height - 730,
                    child: Image(image: NetworkImage(item.image)))),
            Positioned(
              // left: 90,
              // top: 20,
              top: width * 0.05,
              left: width * 0.22,
              child: Container(
                height: 20,
                // height: height - 758,
                width: 150,
                // width: width - 250,
                color: Color.fromRGBO(248, 243, 255, 1),
                child: Center(
                  child: Text(
                    item.month,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(85, 24, 181, 1),
                      // backgroundColor: Color.fromRGBO(248, 243, 255, 1),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // top: 54,
              // left: 90,
              top: width * 0.14,
              left: width * 0.22,
              child: Text(
                item.details,
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(22, 25, 80, 1),
                    fontWeight: FontWeight.w600),
              ),
            ),
            Positioned(
              // top: 4,
              // left: 318,
              top: width * 0.01,
              left: width * 0.80,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                    color: Colors.grey.shade400,
                  )
                  // Divider(color: Colors.black)
                ],
              ),
            ),
            // Container(color: Colors.grey, height: 10),
            Positioned(
                // top: 135,
                // left: 5,
                // right: 5,
                top: width * 0.35,
                left: width * 0.01,
                right: width * 0.01,
                child: Material(
                  child: Container(
                    height: 2,
                    // height: height - 780,
                    width: width,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(225, 226, 242, 1),
                      // borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                )),
            Positioned(
                // top: 90,
                // left: 5,
                // right: 5,
                top: width * 0.23,
                left: width * 0.01,
                right: width * 0.01,
                child: Material(
                  child: Container(
                    height: 2,
                    width: 350,
                    // height: height - 780,
                    // width: width,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(225, 226, 242, 1),
                      // borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                )),
            // Positioned(
            //   child: Divider(
            //     color: Color.fromRGBO(225, 226, 242, 1),
            //     height: 180,
            //     thickness: 1.5,
            //     indent: 10,
            //     endIndent: 10,
            //   ),
            // ),
            Positioned(
              // top: 105,
              // left: 10,
              top: width * 0.27,
              left: width * 0.03,

              child: Text(
                "From AC",
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(91, 93, 136, 1),
                    fontWeight: FontWeight.w400),
              ),
            ),
            Positioned(
              // top: 105,
              // left: 220,
              top: width * 0.27,
              left: width * 0.56,
              child: Text(
                item.account,
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(91, 93, 136, 1),
                    fontWeight: FontWeight.w400),
              ),
            ),
            Positioned(
              // top: 150,
              // left: 10,
              top: width * 0.38,
              left: width * 0.03,
              child: Text(
                "₹ ${item.amount}",
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(85, 24, 181, 1),
                    fontWeight: FontWeight.w800),
              ),
            ),

            // Positioned(
            //   child: Divider(
            //     color: Color.fromRGBO(225, 226, 242, 1),
            //     // height: 300.h,
            //     height: 280,
            //     thickness: 1.5,
            //     indent: 10,
            //     endIndent: 10,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
