import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:widgetbook_test/app/app.locator.dart';
import 'package:widgetbook_test/app/app.router.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

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
          theme: ThemeData(
            primaryColor: Colors.black,
            colorScheme: const ColorScheme.light(
              secondary: Colors.black,
              primary: Colors.black,
            ),
          ),
          navigatorKey: StackedService.navigatorKey,
          onGenerateRoute: StackedRouter().onGenerateRoute,
        );
      },
    );
  }
}
