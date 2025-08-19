import 'package:flutter/material.dart';
import 'package:quran30/views/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Enable Dark Theme
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green.withOpacity(0.4),
          foregroundColor: Colors.white, // text/icons color
        ),
        cardTheme: CardThemeData(
          color: Colors.grey[900],
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white, fontSize: 16),
          bodyLarge: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),

      home: Homescreen(),
    );
  }
}
