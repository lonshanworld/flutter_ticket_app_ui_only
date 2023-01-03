import "package:flutter/material.dart";
import 'package:ticket_booking_app/data.dart';
import 'package:ticket_booking_app/utils/ownstyles.dart';
import 'package:ticket_booking_app/widgets/double_text_widget.dart';
import 'package:ticket_booking_app/widgets/hotel_view.dart';

import '../widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Own_Styles.ownBgColor,
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Good Day!",
                          style: Own_Styles.ownHeadLineStyle3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Book Tickets",
                          style: Own_Styles.ownHeadLineStyle1,
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        "assets/images/travel-logo-template-png_37513.jpg",
                        width: 55,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        Icons.search,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        "Search",
                        style: Own_Styles.ownHeadLineStyle4,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const DoubleTextWidget(text1: "Upcoming Flight", text2: "View All"),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList.map((e) => TicketView(ticket: e)).toList(),
            ),
          ),
          const SizedBox(height: 40,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const DoubleTextWidget(text1: "Hotels", text2: "View All",),
          ),
          const SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: hotelList.map((e) => HotelView(hotelData: e)).toList(),
            ),
          ),
          const SizedBox(height: 30,),
        ],
      ),
    );
  }
}
