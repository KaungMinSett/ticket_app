import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/ticket/widget/ticket_positioned_circle.dart';

import '../../base/widgets/app_column_text_layout.dart';
import '../../base/widgets/ticket_view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Stack(
        children: [
          ListView(
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
                height: 25,
              ),
              AppTicketTabs(
                firstTab: 'Upcoming',
                secondTab: 'Previous',
              ),
              const SizedBox(height: 25,),
              Container(
                  padding: EdgeInsets.only(left: 16),
                  child: TicketView(
                      ticket:ticketList[0],
                    ticketTextColor: Colors.black,
                    dotColor: AppStyles.bigDotColor,
                    planeColor: AppStyles.planeColor,
                    dashColor: Colors.grey.shade400,
                    radiusBottom: 0,

                  ),


              ),
              SizedBox(
                height: 1,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: AppStyles.ticketColor,
                child:  Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          textColor: Colors.black,
                          topText: 'Flutter  DB',
                          bottomText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnTextLayout(
                          textColor: Colors.black,
                          topText: '5221  36879',
                          bottomText: "Passport",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    AppLayoutBuilderWidget(randomDivider: 16, width:6, dashColor: AppStyles.primaryColor,),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          textColor: Colors.black,
                          topText: '2455 67893289945',
                          bottomText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnTextLayout(
                          textColor: Colors.black,
                          topText: 'B4125',
                          bottomText: "Booking code",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    AppLayoutBuilderWidget(randomDivider: 16, width:6, dashColor: AppStyles.primaryColor,),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Column(
                         children: [
                           Row(
                             children: [
                               Image.asset(AppMedia.visaCard, scale: 11,),
                               Text(" *** 2462", style: AppStyles.headlineStyle3,)


                             ],
                           ),
                           SizedBox(height: 5,),
                           Text("Payment method", style: AppStyles.headlineStyle4.copyWith(color: Colors.grey),)
                         ],
                       ),
                        AppColumnTextLayout(
                          textColor: Colors.black,
                          topText: '\$250.00',
                          bottomText: "Price",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),






                  ],
                ),
              ),
              SizedBox(height: 1,),
              // bottom of ticket
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: AppStyles.ticketColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21)
                  )
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Center(
                      child: BarcodeWidget(
                        height: 70,
                        barcode: Barcode.code128(),
                        data: 'https://kms-movie-app.vercel.app/',
                        drawText: false,
                        color: AppStyles.textColor,
                        width: double.infinity,

                      )
                    ),

                  ),
                ),
              ),
              SizedBox(height: 30,),
              //colorful ticket

              Container(
                padding: EdgeInsets.only(left: 16),
                child: TicketView(
                  ticket:ticketList[0],
                  upperColor: AppStyles.ticketBlue,
                  lowerColor: AppStyles.ticketOrange,


                ),


              ),



            ],
          ),
          TicketPositionedCircle(pos: true,),
          TicketPositionedCircle(pos: null,)


        ],
      ),
    );
  }
}
