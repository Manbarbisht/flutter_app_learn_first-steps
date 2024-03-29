import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(const MyApp());

}
class MyApp  extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme:ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),

      routes: {
        "/": (context) => const HomePage(),
        "/home": (context) => const HomePage(),
    "/login": (context) => const LoginPage(),


      },

      );
  }
}