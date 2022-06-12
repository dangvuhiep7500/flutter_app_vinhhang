import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/addRelative/add_relative.dart';
import 'package:flutter_app_vinhhang/screen/bottomnavigator/home_screen.dart';
import 'package:flutter_app_vinhhang/screen/login/login_screen.dart';
import 'package:flutter_app_vinhhang/screen/relative/relative_screen.dart';
import 'package:flutter_app_vinhhang/screen/signup/signup_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Widget _defaultHome = const HomeScreen();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [GlobalMaterialLocalizations.delegate],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => _defaultHome,
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/relative': (context) => const RelativeScreen(),
        '/addRelative': (context) => const AddRelative(),
        '/register': (context) => const SignUpScreen(),
      },
    );
  }
}
