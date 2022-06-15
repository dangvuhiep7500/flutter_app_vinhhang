import 'package:flutter/material.dart';
import 'package:flutter_app_vinhhang/screen/addRelative/add_relative.dart';
import 'package:flutter_app_vinhhang/screen/bottomnavigator/home_screen.dart';
import 'package:flutter_app_vinhhang/screen/contact/contact.dart';
import 'package:flutter_app_vinhhang/screen/login/login_screen.dart';
import 'package:flutter_app_vinhhang/screen/relative/relative_screen.dart';
import 'package:flutter_app_vinhhang/screen/religion/religion.dart';
import 'package:flutter_app_vinhhang/screen/signup/signup_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Widget _defaultHome = const LoginScreen();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale('vi', 'VN'),
        Locale('en', 'US'),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => _defaultHome,
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const SignUpScreen(),
        '/religion': (context) => const Religion(),
        '/home': (context) => const HomeScreen(),
        '/relative': (context) => RelativeScreen(),
        '/addRelative': (context) => const AddRelative(),
        '/contact': (context) => const ContactScreen(),
      },
    );
  }
}
