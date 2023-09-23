import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:netflix/presentation/main_page/widgets/screen_main_page.dart';

import 'presentation/main_page/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(background: Colors.black),
        scaffoldBackgroundColor: Colors.black,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white),bodyText2: TextStyle(color: Colors.white) ),
        
      ),
      home: ScreenMainPage()
    );
  }
}
