import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/find_ticket.dart';
import 'package:ticket_app/screens/search/widgets/ticket_promotion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: 40,
          ),
          Text("What are\nyou looking for?",
              style: AppStyles.headlineStyle1
                  .copyWith(fontSize: 40, letterSpacing: 2.00)),
          const SizedBox(height: 20),
          const AppTicketTabs(
            firstTab: "All tickets",
            secondTab: "Hotels",
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(
              text: 'Departure', icon: Icons.flight_takeoff_rounded),
          const SizedBox(
            height: 15,
          ),
          const AppTextIcon(text: 'Arrival', icon: Icons.flight_land_rounded),
          const SizedBox(
            height: 20,
          ),
          const FindTicket(),
          const SizedBox(
            height: 40,
          ),
          AppDoubleText(
              bigText: 'Upcoming Flights',
              smallText: 'View all',
              func: () => Navigator.pushNamed(context, "/all_tickets")),
          const SizedBox(
            height: 15,
          ),
          const TicketPromotion()
        ],
      ),
    );
  }
}
