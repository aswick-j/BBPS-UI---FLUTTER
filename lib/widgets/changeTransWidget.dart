import 'package:flutter/material.dart';
import 'package:flutter_application_bbps/widgets/littleWidgets.dart';

enum DialogAction { yes, abort }

class Dialogs {
  static Future<DialogAction> yesAbortDialog(
    BuildContext context,
    String title,
    String body,
    String content,
    String suc,
    String message,
    String ID,
  ) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Container(
          child: AlertDialog(
            // contentPadding: EdgeInsets.only(top: 10.0),
            insetPadding: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            title: AnimatedCheck(),
            content: Container(
              width: 300.0,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Text(body,
                          style: TextStyle(
                              fontFamily: 'Rubik',
                              fontSize: 20,
                              color: Color.fromRGBO(22, 25, 80, 1),
                              fontWeight: FontWeight.bold)),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 20, 20, 0),
                        child: Text(content,
                            style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 15,
                                color: Color.fromRGBO(91, 93, 136, 1),
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Center(
                          child: Text(suc,
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 15,
                                  color: Color.fromRGBO(91, 93, 136, 1),
                                  fontWeight: FontWeight.w500))),
                    ),
                    Center(
                        child: Text(message,
                            style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 15,
                                color: Color.fromRGBO(91, 93, 136, 1),
                                fontWeight: FontWeight.w500))),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(ID,
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 16,
                                  color: Color.fromRGBO(85, 24, 181, 1),
                                  fontWeight: FontWeight.w600))),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () =>
                                Navigator.of(context).pop(DialogAction.abort),
                            child: SizedBox(
                                width: 180.0,
                                height: 50.0,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Okay",
                                      style: TextStyle(
                                          fontFamily: 'Rubik', fontSize: 20),
                                    ))),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromRGBO(33, 8, 74, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(12), // <-- Radius
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        );
      },
    );
    return (action != null) ? action : DialogAction.abort;
  }
}
