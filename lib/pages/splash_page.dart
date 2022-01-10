import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
<<<<<<< HEAD
import 'sign_in_page.dart';
=======
>>>>>>> c1d88e5dc766bd7c51ad352256e64127870a0414

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState

<<<<<<< HEAD
    Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return SignInPage();})),);
=======
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/sign-in'),);
>>>>>>> c1d88e5dc766bd7c51ad352256e64127870a0414

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
          child: Container(
        width: 130,
        height: 150,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/image_splash.png'))),
      )),
    );
  }
}
