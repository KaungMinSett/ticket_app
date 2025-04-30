import 'package:flutter/material.dart';

import '../res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final Color textColor;
  const TextStyleThird({super.key, required this.text,  this.textColor=Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headlineStyle3.copyWith(color: textColor),
    );
  }
}
