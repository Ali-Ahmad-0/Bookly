import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          backgroundColor: Colors.white,
          radius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
          texts: 'Free',
          txtcolor: Colors.black,
        ),
        CustomButton(
          backgroundColor: Color(0xffEF8262),
          radius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          texts: 'Preview',
          txtcolor: Colors.white,
        ),
      ],
    );
  }
}
