import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
