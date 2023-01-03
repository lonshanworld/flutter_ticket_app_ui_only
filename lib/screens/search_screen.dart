import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:ticket_booking_app/utils/ownstyles.dart';
import 'package:ticket_booking_app/widgets/app_icon_text.dart';
import 'package:ticket_booking_app/widgets/double_text_widget.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final deviceWidth = Get.width;
    final deviceHeight = Get.height;

    return Scaffold(
      backgroundColor: Own_Styles.ownBgColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.045,vertical: deviceHeight * 0.025),
        child: ListView(
          children: [
            const SizedBox(height: 30,),
            Text(
              "What are\nyou looking for?",
              style: Own_Styles.ownHeadLineStyle1.copyWith(fontSize: 35),
            ),
            const SizedBox(height: 20,),
            const TickeyTabs(text1: "Airline Ticket", text2: "Hotels"),
            const SizedBox(height: 25,),
            const AppIconText(icon: Icons.flight_takeoff_rounded, textstring: "Departure"),
            const SizedBox(height: 12,),
            const AppIconText(icon: Icons.flight_land_rounded, textstring: "Arrival"),
            const SizedBox(height: 30,),
            ElevatedButton(
              onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xD91130CE)),
                padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 16)),
                shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                )),
              ),
              child: const Text("Find Tickets"),
            ),
            const SizedBox(height: 30,),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: DoubleTextWidget(text1: "Upcoming Flights", text2: "View All"),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 1,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.all(3),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          height:160,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              color: Own_Styles.ownPrimaryColor,
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/images/travel-logo-template-png_37513.jpg",
                                ),
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.cyan,
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                ),
                              ],
                          ),
                          margin: const EdgeInsets.only(bottom: 15),
                        ),
                        Text(
                          "20% Discount on Business class ticket from airline on International.",
                          style: Own_Styles.ownHeadLineStyle2.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,top: 5),
                    child: Column(
                      children: [
                        Stack(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 12),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFF3AB8B8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Discount\nFor Survey",
                                    style: Own_Styles.ownHeadLineStyle2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  Text(
                                    "Take the survey about our service and get discount",
                                    style: Own_Styles.ownHeadLineStyle2.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: -35,
                              top: -35,
                              child: Container(
                                padding: const EdgeInsets.all(30),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(width: 18, color: const Color(0xFF189999)),
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 13,),
                        Container(
                          padding: const EdgeInsets.all(23),
                          margin: const EdgeInsets.only(bottom: 20),
                          height: 190,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xFFEC6545),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Take Love",
                                style: Own_Styles.ownHeadLineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10,),
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "😍",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    TextSpan(
                                      text: "🥰",
                                      style: TextStyle(fontSize: 45),
                                    ),
                                    TextSpan(
                                      text: "😘",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ]
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
