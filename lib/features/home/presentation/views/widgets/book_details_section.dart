import 'package:echo_verse/core/utils/styles.dart';
import 'package:echo_verse/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'best_seller_list_view_item.dart';
import 'book_actions.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookImage(
          height: 33.h,
          width: 43.w,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "The Jungle Book",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: Styles.titleStyle21.copyWith(
            fontSize: 30,
            fontFamily: 'GT',
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: 0.75,
          child: Text(
            "Adam Rowling",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: Styles.titleStyle17.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        const BookRating(),
        const SizedBox(
          height: 30,
        ),
        const BookActions(),
      ],
    );
  }
}
