import 'package:flutter/material.dart';
import 'package:ticket_app/app_routes.dart';
import 'package:ticket_app/base/utils/all_json.dart';

import '../../../base/res/styles/app_styles.dart';
import 'hotel.dart';
class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: AppStyles.bgColor,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        elevation: 0.0,


        title: const Text("All Hotels"),

      ),
      body: GestureDetector(
        onTap: (){


        },
        child: Container(

          margin: EdgeInsets.only(left: 8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  crossAxisSpacing: 13.0,
                  mainAxisSpacing: 14.0,
                  childAspectRatio: 0.9,

                ),
                itemCount: hotelList.length,
                itemBuilder: (context, index){
                  var singleHotel = hotelList[index];
                  return HotelGridView(hotel: singleHotel, index: index);
                }
            ),
          ),
        ),
      ),

    );
  }
}



class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final int index;
  const HotelGridView({super.key, required this.hotel, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, AppRoutes.hotelDetail, arguments: {
          'index':index
        });
        print("My index is $index");

      },
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image takes remaining vertical space
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                hotel['place'],
                style: AppStyles.headlineStyle3.copyWith(color: AppStyles.kakiColor),
              ),
            ),
            Row(
              children: [
                // Flexible text with ellipsis for destination
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      hotel['destination'],
                      style: AppStyles.headlineStyle3.copyWith(color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const SizedBox(width: 7),
                // Flexible text with ellipsis for price
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "\$${hotel['price']}/night",
                      style: AppStyles.headlineStyle4.copyWith(color: AppStyles.kakiColor),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}