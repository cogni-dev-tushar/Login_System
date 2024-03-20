
import 'package:flutter/material.dart';
import 'CustomButtons.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C2C2C),
      appBar: AppBar(
        title: const Text('WELCOME'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const BannerImage(),
            SizedBox(height: 20.0),





            Container(
                                                        decoration: BoxDecoration(
                                                          color: Colors.red,
                                                          borderRadius: BorderRadius.circular(8.0)
                                                        ),

              child: Column(
                children: [
                  PrimaryButton(
                    text: 'Log In',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20.0),
                  SecondaryButton(
                    text: 'Register',
                    onPressed: () {},
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class BannerImage extends StatelessWidget {
  const BannerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.shortestSide * 0.55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/Welcome Screen Banner.png'),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
