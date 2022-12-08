import 'dart:async';
import 'package:apk_ank/page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:apk_ank/page/main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage()))
          ;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff0e1446),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/bg_wudhuphp.png',
              height: 200,
            ),
            Text("Bacaan Shalat",
              style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}