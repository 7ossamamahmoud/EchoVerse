import 'package:echo_verse/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import 'constants.dart';

void main() {
  runApp(
    const EchoVerse(),
  );
}

class EchoVerse extends StatelessWidget {
  const EchoVerse({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (BuildContext, Orientation, ScreenType) {
        return GetMaterialApp(
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
          ),
          debugShowCheckedModeBanner: false,
          home: const SplashView(),
        );
      },
    );
  }
}
