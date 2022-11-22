import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xiaote_flutter/home/main_activity.dart';
import 'package:xiaote_flutter/splash/SplashAnimManager.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late SplashAnimManager _splashAnimManager;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    Future.delayed(const Duration(milliseconds: 300)).then((value) {
      _animationController.forward();
      Future.delayed(const Duration(milliseconds: 1500), () {

        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MainActivity()), (Route<dynamic> rout) => false);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    _splashAnimManager = SplashAnimManager(
      _animationController,
      screenWidth,
      (getTextWidth('Flutter') - getTextWidth('Dojo') - 4) / 2,
    );
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return Positioned(
                  right: _splashAnimManager.animLeft.value,
                  child: const Text(
                "XiaoTe",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ));
            },
          ),
          AnimatedBuilder(
            animation: _animationController,
            builder: (context, widget) {
              return Positioned(
                left: _splashAnimManager.animRight.value,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(255, 253, 152, 39),
                  ),
                  child: const Text(
                    'Flutter',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }

  double getTextWidth(String text) {
    final textPainter = TextPainter(
      text: TextSpan(
          text: text,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w600)),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.width;
  }
}
