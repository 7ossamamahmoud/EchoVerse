import 'package:echo_verse/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'best_seller_list_view.dart';
import 'custom_home_view_app_bar.dart';
import 'featured_sliding_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5.5.w,
        vertical: 2.5.h,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                FeaturedSlidingBooksListView(
                  height: 30.h,
                  widthOfImage: 36.w,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 2.5.h,
                    top: 1.5.h,
                  ),
                  child: Text(
                    "Best Seller",
                    style: Styles.titleStyle21,
                  ),
                ),
              ],
            ),
          ),
          const SliverFillRemaining(
            child: BestSellerListView(),
          ),
        ],
      ),
    );
  }
}
