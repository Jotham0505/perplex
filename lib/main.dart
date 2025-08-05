import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplex_clone/pages/chatPage.dart';
import 'package:perplex_clone/pages/homePage.dart';
import 'package:perplex_clone/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.submitButton),
        scaffoldBackgroundColor: AppColors.background,
        textTheme: GoogleFonts.interTextTheme(
          ThemeData.dark().textTheme.copyWith(
              bodyMedium: TextStyle(fontSize: 15, color: AppColors.whiteColor)),
        ),
      ),
      home: const Chatpage(
        question: "What is Ind v Aus Score?",
      ),
    );
  }
}
