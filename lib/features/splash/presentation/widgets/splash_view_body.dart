import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 1,
        milliseconds: 500,
      ),
    );
    fadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: fadeAnimation,
        builder: (context, _) {
          return FadeTransition(
            opacity: fadeAnimation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  "assets/images/Logo.png",
                ),
                Text(
                  "Read, discover, escape: limitless worlds await.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.5.dp,
                    color: Colors.white70,
                    fontFamily: "GT",
                  ),
                )
              ],
            ),
          );
        });
  }
}
