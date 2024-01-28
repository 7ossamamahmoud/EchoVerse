import 'package:echo_verse/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomTextButton(
              onPressed: () {},
              text: '19.99€',
              textColor: Colors.black,
              buttonColor: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 18.dp,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(
                  16,
                ),
                bottomLeft: Radius.circular(
                  16,
                ),
              ),
            ),
          ),
          Expanded(
            child: CustomTextButton(
              onPressed: () {},
              text: 'Free Preview',
              textColor: Colors.white,
              buttonColor: const Color(0xffE67865),
              fontWeight: FontWeight.w600,
              fontSize: 14.5.dp,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(
                  16,
                ),
                bottomRight: Radius.circular(
                  16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
