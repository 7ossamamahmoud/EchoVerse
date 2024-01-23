import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leadingWidth: 30.w,
        scrolledUnderElevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 4.w),
          child: Image.asset('assets/images/Logo.png'),
        ),
      ),
    );
  }
}
