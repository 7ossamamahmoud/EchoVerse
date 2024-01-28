import 'package:echo_verse/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'featured_sliding_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Styles.titleStyle17.copyWith(
            fontSize: 16.dp,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        FeaturedSlidingBooksListView(
          widthOfImage: 20.w,
          height: 20.h,
        ),
      ],
    );
  }
}
