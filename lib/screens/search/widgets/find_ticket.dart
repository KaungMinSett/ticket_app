import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: AppStyles.findTicket,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Center(
        child: Text(
          "Find Tickets",
          style: AppStyles.textStyle.copyWith(color: Colors.white),

        ),
      ),
    );
  }
}
