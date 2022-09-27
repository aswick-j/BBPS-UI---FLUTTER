import "package:flutter/material.dart";
import 'package:flutter_application_bbps/navigation/NavScreens.dart';
import 'package:flutter_application_bbps/screens/AutoPage.dart';
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            radioTheme: RadioThemeData(
              fillColor: MaterialStateColor.resolveWith(
                  (states) => Color.fromRGBO(85, 24, 181, 1)), //<-- SEE HERE
            ),
            textTheme: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme)),
        debugShowCheckedModeBanner: false,
        title: "BBPS",
        home: NavPage());
  }
}
