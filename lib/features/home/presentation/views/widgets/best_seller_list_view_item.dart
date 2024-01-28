import 'package:echo_verse/core/utils/app_router.dart';
import 'package:echo_verse/core/utils/assets_data.dart';
import 'package:echo_verse/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 160,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8.w),
              child: Container(
                width: 24.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  image: DecorationImage(
                    isAntiAlias: true,
                    fit: BoxFit.fill,
                    image: Image.asset(
                      AssetsData.kTestImage,
                    ).image,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: 2.w,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Harry Potter and the Goblet of fire Season 2",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.titleStyle21.copyWith(
                        fontFamily: "GT",
                      ),
                    ),
                    SizedBox(
                      height: 0.25.h,
                    ),
                    Text(
                      "J.K. Rowling",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.titleStyle17.copyWith(
                        color: Colors.white60,
                      ),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "19.99",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.titleStyle21.copyWith(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          " €",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.titleStyle21.copyWith(
                            fontWeight: FontWeight.w900,
                            fontSize: 16.dp,
                          ),
                        ),
                        const Spacer(),
                        const BookRating(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 4.5.w,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 2.5.w,
        ),
        Text(
          "4.8 ",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.titleStyle21
              .copyWith(fontSize: 17.dp, fontWeight: FontWeight.w700),
        ),
        Text(
          "(2390)",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.titleStyle21.copyWith(
            color: Colors.white60,
            fontSize: 17.dp,
          ),
        ),
      ],
    );
  }
}
