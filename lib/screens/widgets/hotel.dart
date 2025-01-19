import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

import '../../base/res/media.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right:16),
      padding: EdgeInsets.all(8.0),
      width: size.width*0.6,
      height: 340,

      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(18)

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: AppStyles.primaryColor,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    AppMedia.hotelRoom
                  )

                )

            ),

          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Open space",
              style: AppStyles.headlineStyle1.copyWith(color: AppStyles.kakiColor),
            ),
          ),
          SizedBox(height: 7,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Yangon",
              style: AppStyles.headlineStyle3.copyWith(color: Colors.white),
            ),
          ),
          SizedBox(height: 7,),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "\$25/night",
              style: AppStyles.headlineStyle1.copyWith(color: AppStyles.kakiColor),
            ),
          )

        ],
      ),

    );
  }
}
