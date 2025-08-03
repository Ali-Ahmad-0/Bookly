
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
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          texts: '19.99 €',
          txtcolor: Colors.black,
        ),
        CustomButton(
          backgroundColor: Color(0xffEF8262),
          radius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          texts: 'Free preview',
          txtcolor: Colors.white,
        ),
      ],
    );
  }
}
