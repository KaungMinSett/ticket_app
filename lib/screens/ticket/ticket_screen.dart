import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

import '../../base/widgets/ticket_view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Tickets",
            style: AppStyles.headlineStyle1,
          ),
          SizedBox(
            height: 20,
          ),
          AppTicketTabs(
            firstTab: 'Upcoming',
            secondTab: 'Previous',
          ),
          const SizedBox(height: 20,),
          Container(
              padding: EdgeInsets.only(left: 16),
              child: TicketView(
                  ticket:ticketList[0],
                ticketTextColor: Colors.black,
                dotColor: AppStyles.bigDotColor,
                planeColor: AppStyles.planeColor,
                dashColor: Colors.grey.shade300,

              ),

          )

        ],
      ),
    );
  }
}
