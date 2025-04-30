import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/ticket_text_style.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final Color textColor;
  const AppColumnTextLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      required this.alignment, required this.textColor });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(

          text: topText,
          textColor: textColor,
        ),
        const SizedBox(
          height: 5,
        ),
        TextStyleThird(
            text: bottomText,
          textColor: textColor,
        ),
      ],
    );
  }
}
