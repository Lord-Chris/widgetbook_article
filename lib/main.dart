import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_test/app/app.locator.dart';
import 'package:widgetbook_test/ui/views/home.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

@WidgetbookApp.material(
  name: "Widgetbook Test",
  devices: [
    Apple.iPhone13ProMax,
    Samsung.s21ultra,
    Desktop.desktop1080p,
  ],
)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          title: 'Widgetbook Test',
          debugShowCheckedModeBanner: false,
          theme: getLightTheme(),
          darkTheme: getDarkTheme(),
          home: const HomeView(),
        );
      },
    );
  }
}

@WidgetbookTheme(name: "Light theme", isDefault: true)
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

@WidgetbookTheme(name: "Dark theme")
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

@WidgetbookAppBuilder()
Widget myAppBuilder(BuildContext context, Widget widget) {
  if (!locator.isRegistered<NavigationService>()) {
    setupLocator();
  }
  ScreenUtil.init(
    context,
    designSize: const Size(375, 812),
  );
  return widget;
}
