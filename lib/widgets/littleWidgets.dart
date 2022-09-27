import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.black12, //color of divider
      thickness: 1, //thickness of divier line
      indent: 18, //spacing at the start of divider
      endIndent: 18, //spacing at the end of divider
    );
  }
}

class AnimatedCheck extends StatefulWidget {
  @override
  _AnimatedCheckState createState() => _AnimatedCheckState();
}

class _AnimatedCheckState extends State<AnimatedCheck>
    with TickerProviderStateMixin {
  late AnimationController scaleController = AnimationController(
      duration: const Duration(milliseconds: 800), vsync: this);
  late Animation<double> scaleAnimation =
      CurvedAnimation(parent: scaleController, curve: Curves.elasticOut);
  late AnimationController checkController = AnimationController(
      duration: const Duration(milliseconds: 400), vsync: this);
  late Animation<double> checkAnimation =
      CurvedAnimation(parent: checkController, curve: Curves.linear);

  @override
  void initState() {
    super.initState();
    scaleController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        checkController.forward();
      }
    });
    scaleController.forward();
  }

  @override
  void dispose() {
    scaleController.dispose();
    checkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double circleSize = 70;
    double iconSize = 50;
    const color = const Color(0xffe0f7ea);
    return ScaleTransition(
      scale: scaleAnimation,
      child: Container(
        height: circleSize,
        width: circleSize,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: SizeTransition(
            sizeFactor: checkAnimation,
            axis: Axis.horizontal,
            axisAlignment: -1,
            child: Center(
                child: Icon(Icons.check,
                    color: Color.fromRGBO(46, 204, 113, 1), size: iconSize))),
      ),
    );
  }
}
