import 'package:echo_verse/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.height, required this.width});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
        image: DecorationImage(
          image: Image.asset(
            AssetsData.kTestImage,
            fit: BoxFit.contain,
          ).image,
        ),
      ),
    );
  }
}
