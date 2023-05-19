import 'package:catcomm/pages/homepage.dart';
import 'package:catcomm/pages/login.dart';
import 'package:catcomm/utils/routes.dart';
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.light),

      initialRoute: MyRoutes.HomeRoute,
      routes: {
        "/": (context) => Login(),
        MyRoutes.HomeRoute: (context) => HomePage(),
        MyRoutes.LoginRoute: (context) => Login()
      },
    );
  }
}
