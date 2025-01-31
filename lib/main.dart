import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stylish/screens/home/home_screen.dart';
import 'package:stylish/themes/customtheme/mytheme.dart';

import 'service/themeservice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop',
      themeMode: ThemeService().theme,
      darkTheme: CustomTheme.darkTheme,
      theme: CustomTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}
