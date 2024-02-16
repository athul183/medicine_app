import 'package:flutter/material.dart';
import 'package:medicine_app/screens/onboarding_screen/pages/page1.dart';
import 'package:medicine_app/screens/onboarding_screen/pages/page2.dart';
import 'package:medicine_app/screens/onboarding_screen/pages/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotPage extends StatelessWidget {
  DotPage({super.key});
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: JumpingDotEffect(
                activeDotColor: Colors.deepPurple,
                dotColor: Colors.deepPurple.shade100,
                verticalOffset: 30,
                spacing: 16,
                dotHeight: 30,
                dotWidth: 30),
          )
        ],
      ),
    );
  }
}
