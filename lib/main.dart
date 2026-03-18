import 'package:fflutter_thai_hotline_app/views/home_ui.dart';
import 'package:fflutter_thai_hotline_app/views/splash_screen_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(FlutterThaiHotLineApp());
}

//=================================================

class FlutterThaiHotLineApp extends StatefulWidget {
  @override
  State<FlutterThaiHotLineApp> createState() => _FlutterThaiHotLineAppState();
}

class _FlutterThaiHotLineAppState extends State<FlutterThaiHotLineApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
