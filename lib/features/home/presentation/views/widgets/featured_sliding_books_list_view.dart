import 'package:echo_verse/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class FeaturedSlidingBooksListView extends StatelessWidget {
  const FeaturedSlidingBooksListView({
    super.key,
    required this.height,
    required this.widthOfImage,
  });

  final double height;
  final double widthOfImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              right: 16,
            ),
            child: CustomBookImage(
              height: height,
              width: widthOfImage,
            ),
          );
        },
      ),
    );
  }
}
