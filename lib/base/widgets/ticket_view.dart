import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.85,
      height: 179,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(21)
              , topRight: Radius.circular(21))
        ),
        child: Column(
          children: <Widget>[
            // departure & destination code and icon
            Row(
              children: [
                Text(
                    "NYC",
                   style: AppStyles.headlineStyle3.copyWith(color: Colors.white) ,
                ),
                Expanded(child: Container(

                )),
                const BigDot(),
                Expanded (child: Stack(
                  children: [
                    SizedBox(
                      height: 24,
                      child: AppLayoutBuilderWidget(randomDivider: 6,),
                    ),
                    Center(
                      child: Transform.rotate(
                        
                      
                        angle: 1.57,
                        child: Icon(
                          Icons.local_airport_rounded, color: Colors.white,
                        ),
                      )
                    )

                  ],

                )),
                const BigDot(),
                Expanded(child: Container(

                )),
                Text(
                  "LDN",
                  style: AppStyles.headlineStyle3.copyWith(color: Colors.white) ,
                ),

              ],
            ),
            const SizedBox(height: 3,),
            // departure & destination place and time
            Row(
              children: [
                Text(
                  "New York",
                  style: AppStyles.headlineStyle3.copyWith(color: Colors.white) ,
                ),
                Expanded(child: Container(

                )),

                Text(
                  "8H 30M",
                  style: AppStyles.headlineStyle3.copyWith(color: Colors.white) ,
                ),
                Expanded(child: Container(

                )),
                Text(
                  "London",
                  style: AppStyles.headlineStyle3.copyWith(color: Colors.white) ,
                ),

              ],
            ),


          ],
        ),
      ),

    );
  }
}
