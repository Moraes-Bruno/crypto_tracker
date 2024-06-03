import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade900,
    primary: const Color.fromARGB(255, 0, 0, 0),
    secondary: const Color.fromARGB(255, 63, 63, 63),
    tertiary: Colors.deepPurple,
    inversePrimary: Colors.grey.shade300,
  )
);