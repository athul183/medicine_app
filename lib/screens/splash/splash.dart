import 'dart:async';

import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:medicine_app/screens/onboarding_screen/onboarding_screen.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splash();
  }

  void splash() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return OnboardScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff04516f),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.white70,
              radius: 50,
              child: SizedBox(
                  //height: 20,
                  child: Image.asset('assets/pillspng.png')),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 350.0,
                child: DefaultTextStyle(
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Agne',
                  ),
                  child: AnimatedTextKit(
                    totalRepeatCount: 1,
                    pause: Duration(microseconds: 1000),
                    animatedTexts: [
                      TypewriterAnimatedText('Welcome Personal track'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
