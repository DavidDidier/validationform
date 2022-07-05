import 'package:flutter/material.dart';
import 'package:validationform/src/pages/home_page.dart';
import 'package:validationform/src/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Logueo',
      initialRoute: LoginPage.nameRoute,
      routes: {
        HomePage.nameRoute: ((context) => const HomePage()),
        LoginPage.nameRoute: ((context) => const LoginPage()),
      },
    );
  }
}
