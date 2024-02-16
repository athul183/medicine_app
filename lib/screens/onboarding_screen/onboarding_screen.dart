import 'package:flutter/material.dart';
import 'package:medicine_app/screens/onboarding_screen/connect_model.dart';
import 'package:medicine_app/screens/onboarding_screen/dotindicator.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff04516f),
      body: SafeArea(
        child: Container(
          //decoration: box,
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    return Column(
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          height: 100,
                          width: double.infinity,
                          child: Image.asset(
                            contents[i].image,
                            // height: 200,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Expanded(
                          child: Text(
                            contents[i].title,
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            contents[i].description,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[200],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      contents.length, (index) => buildDot(index, context)),
                ),
              ),
              Container(
                height: 55,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    //color: Color(0xff15c79a),
                    borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff15c79a),
                  ),
                  onPressed: () {
                    if (currentIndex == contents.length - 1) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return DotPage();
                      }));
                    }
                    _controller.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.bounceIn);
                  },
                  child: Text(
                    currentIndex == contents.length - 1 ? 'continue' : 'Next',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 20,
      width: currentIndex == index ? 30 : 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff15c79a),
      ),
    );
  }
}
