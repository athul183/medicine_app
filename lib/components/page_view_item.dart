import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.itemImage,
    required this.title,
    required this.description,
    required this.backGround,
    required this.txtColor,
  });

  final String itemImage;
  final String title;
  final String description;
  final Widget backGround;
  final Color txtColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backGround,
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
            child: Container(
              padding: const EdgeInsets.all(40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage(itemImage),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: txtColor,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                      color: txtColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PageViewBackgroundItem1 extends StatelessWidget {
  const PageViewBackgroundItem1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: CustomClipPathone(),
        child: Container(
          color: const Color(0xff04516f),
        ),
      ),
    );
  }
}

class CustomClipPathone extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    //(0,0) //1.point
    path.moveTo(0, 750);
    path.lineTo(0, h); // 2. point
    path.lineTo(w, h); // 4. point
    path.lineTo(w, 550); // 5. point
    path.quadraticBezierTo(w * 0.8, h - 230, 250, 630);
    path.quadraticBezierTo(w * 0.5, h - 50, 100, 720);
    path.quadraticBezierTo(w * 0.08, h - 40, 0, 750);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class PageViewBackgroundItem2 extends StatelessWidget {
  const PageViewBackgroundItem2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: CustomClipPathtwo(),
        child: Container(
          color: const Color(0xff04516f),
        ),
      ),
    );
  }
}

class CustomClipPathtwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    //(0,0) //1.point
    path.moveTo(0, 550);
    path.lineTo(0, h); // 2. point
    path.lineTo(w, h); // 4. point
    path.lineTo(w, 50); // 5. point
    path.quadraticBezierTo(w * 0.8, h - 730, 300, 30);
    path.quadraticBezierTo(w * 0.4, h - 750, 110, 200);
    path.quadraticBezierTo(w * 0.4, h - 140, 0, 550);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class PageViewBackgroundItem3 extends StatelessWidget {
  const PageViewBackgroundItem3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: CustomClipPaththree(),
        child: Container(
          color: const Color(0xff04516f),
        ),
      ),
    );
  }
}

class CustomClipPaththree extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    //(0,0) //1.point
    path.moveTo(0, 50);
    path.lineTo(0, h); // 2. point
    path.lineTo(w, h); // 4. point
    path.lineTo(w, 0); // 5. point
    path.lineTo(200, 0);
    path.quadraticBezierTo(w * 0.2, h - 680, 0, 50);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
