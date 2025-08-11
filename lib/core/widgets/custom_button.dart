import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.radius,
    required this.texts,
    required this.txtcolor,
    required this.backgroundColor,
    this.onPressed,
  });
  final String texts;
  final BorderRadius radius;
  final Color txtcolor;
  final Color backgroundColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 52,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(borderRadius: radius),
          ),
          onPressed: onPressed,
          child: Text(
            texts,
            style: Styles.textstyle18.copyWith(
              color: txtcolor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
