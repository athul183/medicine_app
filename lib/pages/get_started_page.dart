import 'package:flutter/material.dart';
import 'package:medicine_app/components/page_view_item.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  late PageController _pageController;
  int _activePage = 0;

  List<Widget> pages = [
    const PageViewItem(
      itemImage: 'assets/images/clock.png',
      title: 'Set Reminder.',
      description: 'Never forget to take your medicines on time.',
      backGround: PageViewBackgroundItem1(),
      txtColor: Colors.black,
    ),
    const PageViewItem(
      itemImage: 'assets/images/Capsules.png',
      title: 'Add medicines.',
      description: 'Its easy and simple.',
      backGround: PageViewBackgroundItem2(),
      txtColor: Colors.white,
    ),
    const PageViewItem(
      itemImage: 'assets/images/Doctors.png',
      title: 'Stay Healthy!',
      description: 'Keeping your body healthy is an expression of gratitude.',
      backGround: PageViewBackgroundItem3(),
      txtColor: Colors.white,
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: double.infinity,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _activePage = page;
                  });
                },
                itemCount: pages.length,
                itemBuilder: (context, index) {
                  return pages[index];
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                    pages.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: _activePage == index
                            ? const Color(0xff15c79a)
                            : Colors.grey.shade300,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                SizedBox(
                  height: 45,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_activePage == pages.length - 1) {}
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeInOutQuart,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff15c79a),
                    ),
                    child: Text(
                      _activePage == pages.length - 1 ? 'Get started' : 'Next',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
