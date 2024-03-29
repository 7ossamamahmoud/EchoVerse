import 'package:echo_verse/core/utils/app_router.dart';
import 'package:echo_verse/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetsData.kLogoPath,
          height: 3.h,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(
              AppRouter.kSearchView,
            );
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 24,
          ),
        )
      ],
    );
  }
}
