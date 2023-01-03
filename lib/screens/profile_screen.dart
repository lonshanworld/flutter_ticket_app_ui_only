import "package:flutter/material.dart";
import "package:get/get.dart";
import 'package:ticket_booking_app/utils/ownstyles.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final deviceWidth = Get.width;
    final deviceHeight = Get.height;

    return Scaffold(
      backgroundColor: Own_Styles.ownBgColor,
      body: Padding(
        padding: EdgeInsets.all(deviceWidth * 0.045),
        child: ListView(
          children: [
            SizedBox(height: deviceHeight * 0.05,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 86,
                  width: 86,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      image:  AssetImage("assets/images/travel-logo-template-png_37513.jpg"),
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book Tickets",
                      style: Own_Styles.ownHeadLineStyle1,
                    ),
                    const SizedBox(height: 2,),
                    Text(
                      "New York",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Container(
                      padding: const EdgeInsets.only(
                        right: 11,
                        top: 4,
                        bottom: 4,
                        left: 4,
                      ),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xFFFEF4F3),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF526799),
                            ),
                            child: const Icon(
                              Icons.shield,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          const SizedBox(width: 5,),
                          const Text(
                            "Premium Status",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                InkWell(
                  child: Text(
                    "Edit",
                    style: Own_Styles.ownTextstyle.copyWith(color: Own_Styles.ownPrimaryColor,),
                  ),
                  onTap: (){
                  },
                ),
              ],
            ),
            SizedBox(height: deviceHeight * 0.04,),
            Stack(
              children: [
                Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: Own_Styles.ownPrimaryColor,
                  ),
                ),
                Positioned(
                  top: -40,
                  right: -30,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border: Border.all(width: 20, color: Colors.indigo),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: Icon(Icons.lightbulb,color: Own_Styles.ownPrimaryColor,size: 40,),
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You've get a new reward",
                            style: Own_Styles.ownHeadLineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "You had 95 flights in a year",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: deviceHeight * 0.04,),
            const Text(
              "Accumulated Miles",
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: deviceHeight * 0.04,),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                children: [
                  const Text(
                    "999999",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Miles accrued", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text("23 May 2021", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                  SizedBox(height: deviceHeight * 0.025,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnLayout(text1: "33333", text2: "Miles", align: CrossAxisAlignment.start),
                      ColumnLayout(text1: "Airline Co", text2: "Received from", align: CrossAxisAlignment.end),
                    ],
                  ),
                  SizedBox(height: deviceHeight * 0.025,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnLayout(text1: "24", text2: "Miles", align: CrossAxisAlignment.start),
                      ColumnLayout(text1: "McDonald's", text2: "Received from", align: CrossAxisAlignment.end),
                    ],
                  ),
                  SizedBox(height: deviceHeight * 0.025,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnLayout(text1: "564", text2: "Miles", align: CrossAxisAlignment.start),
                      ColumnLayout(text1: "Exuma", text2: "Received from", align: CrossAxisAlignment.end),
                    ],
                  ),
                  SizedBox(height: deviceHeight * 0.025,),
                  Center(
                    child: Text("How to get more miles?", style: TextStyle(color: Own_Styles.ownPrimaryColor),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
