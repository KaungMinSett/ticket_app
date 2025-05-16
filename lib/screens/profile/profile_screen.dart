import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/ticket_text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Padding(padding: EdgeInsets.only(top: 70)),
          //top section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage(AppMedia.logo))),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: AppStyles.headlineStyle1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "New York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    decoration: BoxDecoration(
                        color: AppStyles.profileLocationColor,
                        borderRadius: BorderRadius.circular(100)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppStyles.profileTextColor),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Premium Status",
                          style: TextStyle(
                              color: AppStyles.profileTextColor,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Expanded(child: Container()),
              Text(
                "Edit",
                style: TextStyle(color: AppStyles.primaryColor),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Divider(
            color: Colors.grey.shade400,
          ),
          SizedBox(
            height: 10,
          ),
          //card part
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: AppStyles.primaryColor),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: AppStyles.primaryColor,
                        size: 27,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: [
                        TextStyleThird(text: 'You\'v got a new reward'),
                        Text(
                          "You have 95 flights in a year",
                          style: TextStyle(
                              height: 1.4,
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.8)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  top: -40,
                  right: -45,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(width: 16, color: Color(0xff264cd2))),
                  ))
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            "Accumulated Miles",
            style: AppStyles.headlineStyle2,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: AppStyles.bgColor),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  "1920391",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                    color: AppStyles.textColor,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accured",
                      style: AppStyles.headlineStyle4.copyWith(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "13th May",
                      style: AppStyles.headlineStyle4.copyWith(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.grey.shade400,
                ),
                SizedBox(
                  height: 8,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                        topText: '23 042',
                        bottomText: 'Miles',
                        alignment: CrossAxisAlignment.start,
                        textColor: Colors.black),
                    AppColumnTextLayout(
                        topText: 'Airline CO',
                        bottomText: 'Received from',
                        alignment: CrossAxisAlignment.end,
                        textColor: Colors.black),

                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  color: Colors.grey.shade400,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                        topText: '25 242',
                        bottomText: 'Miles',
                        alignment: CrossAxisAlignment.start,
                        textColor: Colors.black),
                    AppColumnTextLayout(
                        topText: 'KMS CO',
                        bottomText: 'Received from',
                        alignment: CrossAxisAlignment.end,
                        textColor: Colors.black),

                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  color: Colors.grey.shade400,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                        topText: '89 042',
                        bottomText: 'Miles',
                        alignment: CrossAxisAlignment.start,
                        textColor: Colors.black),
                    AppColumnTextLayout(
                        topText: 'Udey CO',
                        bottomText: 'Received from',
                        alignment: CrossAxisAlignment.end,
                        textColor: Colors.black),

                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  color: Colors.grey.shade400,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                        topText: '242',
                        bottomText: 'Miles',
                        alignment: CrossAxisAlignment.start,
                        textColor: Colors.black),
                    AppColumnTextLayout(
                        topText: 'CO CO',
                        bottomText: 'Received from',
                        alignment: CrossAxisAlignment.end,
                        textColor: Colors.black),

                  ],
                ),
                SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    print("tapped");
                  },
                  child: Text(
                    "How to get more miles",
                    style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor,
                    fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
