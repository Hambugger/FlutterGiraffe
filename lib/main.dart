// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicapp/pages/login_page.dart';
import 'package:musicapp/pages/welome_page.dart';

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
        colorSchemeSeed: Color.fromARGB(243, 240, 240, 240),
        scaffoldBackgroundColor: Color(0xfff6f6ff),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xfff6f6ff),
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelomePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
