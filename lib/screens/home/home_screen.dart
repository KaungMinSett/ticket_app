import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/app_routes.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/home/widgets/hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: AppStyles.headlineStyle3),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Book Tickets", style: AppStyles.headlineStyle1)
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo))),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6fd),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xffbfc205),
                      ),
                      Text("Search "),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  bigText: 'Upcoming flights',
                  smallText: 'View all',
                  func: () =>  Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList.take(3).map((singleTicket) =>
                        GestureDetector(
                          onTap: (){
                            var index = ticketList.indexOf(singleTicket);
                            Navigator.pushNamed(context, AppRoutes.ticketScreen,
                                arguments: {
                                  'index':index
                                }
                            );
                          },
                          child: TicketView(
                            ticket: singleTicket,
                            upperColor: AppStyles.ticketBlue,
                            lowerColor: AppStyles.ticketOrange,
                          ),
                        )
                    ).toList(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View all',
                  func: () =>  Navigator.pushNamed(context, AppRoutes.allHotels),

                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child:  Row(
                      children: hotelList.take(3).map((singleHotel) =>

                          GestureDetector(
                              onTap: (){
                                var index = hotelList.indexOf(singleHotel);
                                Navigator.pushNamed(context, AppRoutes.hotelDetail, arguments: {
                                  'index':index
                                });
                                print("My index is $index");
                              },
                              child: Hotel(hotel: singleHotel))
                      ).toList(),
                    ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
