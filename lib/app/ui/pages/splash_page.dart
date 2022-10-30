import 'dart:async';

import 'package:familys/app/ui/utils/utils.dart';
import 'package:flutter/material.dart';

import 'presentation_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const PresentationPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.primaryColor,
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 5,
              ),
              child: Image.asset('assets/icons/logo_familys.png'),
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 20.0,
            child: Text(
              "©Copyright SmileDev",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white24, letterSpacing: 1.25),
            ),
          ),
        ],
      ),
    );
  }
}
