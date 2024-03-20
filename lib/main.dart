import 'package:flutter/material.dart';
import 'CustomButtons.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.greenAccent,
          centerTitle: true,
          elevation: 3.0,
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white)
        ),
      ),
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C2C2C),
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Welcome Page!!'),
            SizedBox(height: 10.0),
            PrimaryButton(
              text: 'Log In',
              onPressed: () {},
            ),
            SizedBox(height: 10.0),
            SecondaryButton(
              text: 'Regester',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
