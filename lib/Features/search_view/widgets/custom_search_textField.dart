import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, required this.onSubmitted});
  final ValueChanged<String> onSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(18),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(18),
        ),
        hintText: 'Search...',
        suffixIcon: Opacity(
          opacity: .8,
          child: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
