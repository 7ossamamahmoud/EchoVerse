import 'package:echo_verse/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'book_details_section.dart';
import 'custom_book_view_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5.5.w,
                vertical: 2.5.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomBookViewAppBar(),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  const BookDetailsSection(),
                  Expanded(
                    child: SizedBox(
                      height: 4.5.h,
                    ),
                  ),
                  const SimilarBooksSection()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
