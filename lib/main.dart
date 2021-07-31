import 'package:aya_test/ui/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            fontFamily: 'Sofia Pro',
            bottomNavigationBarTheme:
                BottomNavigationBarThemeData(selectedItemColor: Colors.black),
            primaryColor: Colors.black,
            accentColor: Colors.black),
        home: HomePage());
  }
}
