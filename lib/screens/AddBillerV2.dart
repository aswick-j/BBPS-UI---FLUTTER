import 'package:flutter/material.dart';

class AddBillerV2 extends StatefulWidget {
  const AddBillerV2({super.key});

  @override
  State<AddBillerV2> createState() => _AddBillerV2State();
}

class _AddBillerV2State extends State<AddBillerV2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(33, 8, 74, 1),
          title: Text("Add Biller"),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                child: Stack(
                  children: [
                    Positioned(
                        child: Material(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 20, bottom: 0),
                        child: Container(
                          height: 80,
                          width: 490,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )),
                    Positioned(
                      top: 33,
                      left: 40,
                      child: Card(
                          elevation: 5.0,
                          // shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://is4-ssl.mzstatic.com/image/thumb/Purple112/v4/d9/d0/21/d9d0217b-9720-f5d5-1e73-a1a2a7bc1290/AppIcon-0-0-1x_U007emarketing-0-0-0-4-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/434x0w.webp"),
                                  fit: BoxFit.cover,
                                )),
                          )),
                    ),
                    Positioned(
                      top: 40,
                      left: 100,
                      child: Text(
                        "Airtel Telecom Services",
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(22, 25, 80, 1),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 100,
                      child: Text(
                        "All India",
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(91, 93, 136, 1),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Positioned(
                      top: 34,
                      left: 310,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit_outlined),
                            color: Colors.grey.shade400,
                          )
                          // Divider(color: Colors.black)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 120, bottom: 10),
                  child: Stack(
                    children: [
                      Positioned(
                          child: Material(
                        child: Container(
                          height: 440,
                          width: 490,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      )),
                      Positioned(
                        top: 20,
                        left: 10,
                        child: Text(
                          "Customer Reference Number",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(91, 93, 136, 1),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 45, bottom: 0),
                        child: TextFormField(
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                          decoration: const InputDecoration(
                              hintText: "Enter",
                              border: OutlineInputBorder(),
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 10, 10, 10)),
                        ),
                      ),
                      Positioned(
                        top: 110,
                        left: 10,
                        child: Text(
                          "Customer Mobile Number",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(91, 93, 136, 1),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 140, bottom: 0),
                        child: TextFormField(
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                          decoration: const InputDecoration(
                              hintText: "Enter",
                              border: OutlineInputBorder(),
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 10, 10, 10)),
                        ),
                      ),
                      Positioned(
                        top: 210,
                        left: 10,
                        child: Text(
                          "Bill Name (Nick Name)",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(91, 93, 136, 1),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 240, bottom: 0),
                        child: TextFormField(
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                          decoration: const InputDecoration(
                              hintText: "Enter",
                              border: OutlineInputBorder(),
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 10, 10, 10)),
                        ),
                      ),
                      Positioned(
                          top: 320,
                          left: 25,
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
                        top: 335,
                        left: 50,
                        child: Text(
                          "By  continuing, you agree to accept our",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(91, 93, 136, 1),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Positioned(
                        top: 360,
                        left: 50,
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
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 627, bottom: 20),
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
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ))),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
