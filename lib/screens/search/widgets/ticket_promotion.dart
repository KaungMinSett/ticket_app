import 'package:flutter/material.dart';

import '../../../base/res/media.dart';
import '../../../base/res/styles/app_styles.dart';
class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Container(
          width: size.width*0.44,
          height: 380,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 1,
              spreadRadius: 2,
            )],

          ),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            AppMedia.planeSit

                        )
                    )
                ),

              ),
              const SizedBox(height: 12,),
              Text(
                  "20% discount on the early booking of this flight. Don't miss",
                  style: AppStyles.headlineStyle2.copyWith(letterSpacing: 1,)

              )

            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    width: size.width*0.44,
                    height: 190,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff3ab8b8)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discount\nfor survey",
                          style: AppStyles.headlineStyle2.copyWith(
                            color: Colors.white,

                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Take the survey about our services and get discount",
                          style: AppStyles.headlineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              height: 1.5



                          ),
                        ),

                      ],
                    )
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppStyles.circleColor,
                          width: 18
                      ),
                      shape: BoxShape.circle,

                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              width: size.width*.44,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.deepOrangeAccent,
              ),
              child: Column(
                children: [
                  Text(
                    "Take Love",
                    style: AppStyles.headlineStyle2.copyWith(
                        color: Colors.white
                    ),
                  ),
                  Text(
                    "😍🥰😘",
                    style: TextStyle(
                        fontSize: 30,
                        height: 1.5
                    ),
                  )
                ],
              ),

            )

          ],
        )
      ],
    );
  }
}
