import 'package:echo_verse/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    this.fontWeight,
    this.borderRadius,
    this.fontSize,
  });

  final void Function()? onPressed;
  final String text;
  final Color textColor;
  final Color buttonColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: Styles.titleStyle17.copyWith(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
