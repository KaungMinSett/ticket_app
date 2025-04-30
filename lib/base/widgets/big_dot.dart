import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  final Color dotColor;
  const BigDot({super.key, required this.dotColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: dotColor
        ),
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
