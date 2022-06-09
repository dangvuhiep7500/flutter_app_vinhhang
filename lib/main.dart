import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/relative_detail.dart';
import 'package:flutter_app_vinhhang/screen/detailRelative/relative_detailtest.dart';
import 'package:flutter_app_vinhhang/screen/home/home_screen.dart';
import 'package:flutter_app_vinhhang/screen/login/login_screen.dart';
import 'package:flutter_app_vinhhang/screen/relative/relative_screen.dart';
import 'package:flutter_app_vinhhang/screen/signup/signup_screen.dart';

Widget _defaultHome = const LoginScreen();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => _defaultHome,
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/relative': (context) => const RelativeScreen(),
        // '/relativeDetail': (context) => const RelativeDetailtest(),
        '/register': (context) => const SignUpScreen(),
      },
    );
  }
}
