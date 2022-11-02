// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/home_page.dart';
import 'package:flutter_application_2/Pages/login_page.dart';
import 'package:flutter_application_2/utils/routes.dart';
import 'package:flutter_application_2/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // double a = 3.45;
    // bool IsApp = true;
    // num temp = 30; // Take Both Int and Double
    // var day = "Tuesday"; // Any Data Type
    // const pie = 3.14;

    return MaterialApp(
      // home: HomePage(), //Route and This both should not be used simultaneously
      themeMode: ThemeMode.light,
      theme: MyTheme.LightTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute: (context) => Login_Page(),
        MyRoutes.loginRoute: (context) => Login_Page(),
        MyRoutes.homeRoute: (compute) => HomePage(),
      },
    );
  }
}
