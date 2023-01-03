import "package:flutter/material.dart";
import 'package:ticket_booking_app/utils/ownstyles.dart';

class HotelView extends StatelessWidget {

  final Map<String,dynamic> hotelData;
  const HotelView({Key? key, required this.hotelData}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: Own_Styles.ownPrimaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            spreadRadius: 1,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.symmetric(horizontal: 10,),
      width: deviceWidth * 0.6,
      // height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height:200,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Own_Styles.ownPrimaryColor,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/travel-logo-template-png_37513.jpg",
                ),
              )
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            hotelData["place"],
            style: Own_Styles.ownHeadLineStyle2.copyWith(color: Own_Styles.ownKakiColor),
          ),
          const SizedBox(height: 5,),
          Text(
            hotelData["destination"],
            style: Own_Styles.ownHeadLineStyle3.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 5,),
          Text(
            "\$ ${hotelData["price"]}/Night",
            style: Own_Styles.ownHeadLineStyle1.copyWith(color: Own_Styles.ownKakiColor),
          ),
        ],
      ),
    );
  }
}
