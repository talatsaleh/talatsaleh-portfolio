import 'package:flutter/material.dart';

class MyThemeData {
  final ColorScheme myColorScheme;

  ThemeData get myTheme => ThemeData(
      colorScheme: myColorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: myColorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: myColorScheme.secondary,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(20),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          padding: const EdgeInsets.all(20),
          foregroundColor: myColorScheme.onSurface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ));
  static const myLightColorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: Colors.deepPurple,
      onPrimary: Colors.white70,
      secondary: Colors.orangeAccent,
      onSecondary: Colors.white70,
      error: Colors.red,
      onError: Colors.white70,
      surface: Colors.white,
      onSurface: Colors.black87);
  static const myDarkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.purple,
    onPrimary: Colors.white70,
    secondary: Colors.orangeAccent,
    onSecondary: Colors.white70,
    error: Colors.red,
    onError: Colors.white70,
    surface: Color.fromARGB(255, 18, 18, 18),
    onSurface: Colors.white,
  );

  MyThemeData({required this.myColorScheme});
}
