import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:plant_app/home.dart';

import 'body.dart';
import 'colors.dart';

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
      title: 'Plant app',
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: kPrimaryColor),
          scaffoldBackgroundColor: kBackgroundColor,
          fontFamily: 'j',
          primaryColor: kPrimaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      routes: {Home.RouteName: (_) => Home(), Body.RouteName: (_) => Body()},
      home: Home(),
    );
  }
}
