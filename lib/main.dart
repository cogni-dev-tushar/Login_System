import 'package:flutter/material.dart';
import 'CustomButtons.dart';
import 'LoginPage.dart';
import 'RegisterPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff2C2C2C),
        appBarTheme: const AppBarTheme(
          color: Color(0xff1DAA61),
          centerTitle: true,
          elevation: 3.0,
        ),
      ),
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.login),
            icon: Icon(Icons.login_outlined),
            label: 'Login',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.app_registration),
            icon: Icon(Icons.app_registration_outlined),
            label: 'Register',
          ),
        ],
      ),
      body: <Widget>[
        LoginPage(),
        RegisterPage(),
      ][currentPageIndex],
    );
  }
}
