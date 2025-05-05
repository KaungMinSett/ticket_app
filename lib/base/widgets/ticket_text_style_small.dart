import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign align;
  final Color textColor;
  const TextStyleFourth(
      {super.key,
      required this.text,
      this.align = TextAlign.start,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyles.headlineStyle4.copyWith(color: textColor),
    );
  }
}
