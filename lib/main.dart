import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_ui/constraints.dart';
import 'package:profile_ui/screens/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile UI',
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      home: const MyHomePage(),
    );
  }
}
