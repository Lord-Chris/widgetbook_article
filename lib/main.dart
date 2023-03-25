import 'package:flutter/material.dart';
import 'package:widgetbook_test/app/app.locator.dart';
import 'package:widgetbook_test/ui/views/home.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgetbook Test',
      debugShowCheckedModeBanner: false,
      theme: getLightTheme(),
      darkTheme: getDarkTheme(),
      home: const HomeView(),
    );
  }
}

ThemeData getLightTheme() {
  return ThemeData.light(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    colorScheme: ColorScheme.light(
      secondary: Colors.black,
      primary: Colors.yellow,
      background: Colors.white,
      onBackground: Colors.grey.shade200,
    ),
  );
}

ThemeData getDarkTheme() {
  return ThemeData.dark(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.dark(
      secondary: Colors.white,
      primary: Colors.yellow,
      background: Colors.black,
      onBackground: Colors.grey.shade800,
    ),
  );
}
