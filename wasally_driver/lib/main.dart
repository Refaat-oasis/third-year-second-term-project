import 'package:flutter/material.dart';
import 'package:wasaalydriver/components/theme.dart';
import 'package:wasaalydriver/splash/splash_screen.dart';
// import 'layout/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightMode,
        darkTheme: darkMode,
        themeMode: ThemeMode.light,
        home: SplashScreen());
  }
}
