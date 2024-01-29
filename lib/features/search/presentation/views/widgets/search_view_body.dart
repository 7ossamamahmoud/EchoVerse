import 'package:echo_verse/core/utils/assets_data.dart';
import 'package:echo_verse/core/utils/styles.dart';
import 'package:echo_verse/features/search/presentation/views/widgets/search_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 5.5.w,
            vertical: 2.5.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetsData.kLogoPath,
                    height: 3.h,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                    enabledBorder: buildOutlineInputBorder(),
                    focusedBorder: buildOutlineInputBorder(),
                    disabledBorder: buildOutlineInputBorder(),
                    hintText: 'Search for books'),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Search Results:",
                style: Styles.titleStyle17,
              ),
              const SizedBox(
                height: 10,
              ),
              const Expanded(
                child: SearchBooksListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Colors.white,
        ));
  }
}
