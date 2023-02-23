// ignore_for_file: override_on_non_overriding_member

import 'dart:web_gl';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/goole_fonts.dart';

import 'cons.dart';
import 'screens/home.dart';

//import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StateLessWidget {
  @override
  Widget build(BuildContent context) {
    return MaterialApp(
      title: 'الإسعافات الأولية ',

      //  style: GoogleFonts.getFont('almarai'),
      theme: ThemeDate(
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
      ),
      //arabic rtl
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),
      debugShowCheckedModeBanner: false,
      home: FirstHome(),
    );
  }
}
