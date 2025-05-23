import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/ticket_text_style.dart';
import 'package:ticket_app/base/widgets/ticket_text_style_small.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final Color upperColor;
  final Color lowerColor;
  final Color ticketTextColor;
  final Color dotColor;
  final Color planeColor;
  final Color dashColor;
  final double radiusBottom;
  const TicketView({
    super.key,
    required this.ticket,
    this.wholeScreen = false,
    this.upperColor = Colors.white,
    this.lowerColor = Colors.white,
    this.ticketTextColor = Colors.white,
    this.dotColor = Colors.white,
    this.planeColor = Colors.white,
    this.dashColor = Colors.white,
    this.radiusBottom = 21,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 168,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            // blue part of ticket
            Container(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: upperColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                child: Column(
                  children: <Widget>[
                    // departure & destination code and icon
                    Row(
                      children: [
                        TextStyleThird(text: ticket["from"]["code"], textColor: ticketTextColor,),
                        Expanded(child: Container()),
                         BigDot(
                          dotColor:dotColor,
                        ),
                        Expanded(
                            child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(
                                randomDivider: 6,
                                dashColor: dotColor,
                              ),
                            ),
                            Center(
                                child: Transform.rotate(
                              angle: 1.57,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: planeColor,
                              ),
                            ))
                          ],
                        )),
                         BigDot(
                           dotColor: dotColor,
                        ),
                        Expanded(child: Container()),
                        TextStyleThird(text: ticket["to"]["code"], textColor: ticketTextColor),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    // departure & destination place and time
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextStyleFourth(text: ticket["from"]["name"],textColor: ticketTextColor),
                        ),
                        Expanded(child: Container()),
                        TextStyleFourth(text: ticket["flying_time"], textColor: ticketTextColor),
                        Expanded(child: Container()),
                        SizedBox(
                            width: 100,
                            child: TextStyleFourth(
                              text: ticket["to"]["name"],
                              align: TextAlign.end,
                                textColor: ticketTextColor
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // line and circles
            Container(
              height: 20,
              color: lowerColor,
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigCircle(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomDivider: 16,
                    width: 6,
                        dashColor: dashColor,
                  )),
                  BigCircle(
                    isRight: true,
                  ),
                ],
              ),
            ),
            // orange part of ticket
            Container(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: lowerColor,
                    borderRadius:  BorderRadius.only(
                        bottomLeft: Radius.circular(radiusBottom),
                        bottomRight: Radius.circular(radiusBottom))),
                child: Column(
                  children: <Widget>[
                    // departure & destination code and icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          textColor: ticketTextColor,
                          bottomTextColor: ticketTextColor,
                          topText: ticket["date"],
                          bottomText: "Date",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnTextLayout(
                          textColor: ticketTextColor,
                          bottomTextColor: ticketTextColor,
                          topText: ticket["departure_time"],
                          bottomText: "Departure time",
                          alignment: CrossAxisAlignment.center,
                        ),
                        AppColumnTextLayout(
                          textColor: ticketTextColor,
                          bottomTextColor: ticketTextColor,
                          topText: ticket["number"].toString(),
                          bottomText: "Number",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
