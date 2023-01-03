import 'package:barcode_widget/barcode_widget.dart';
import "package:flutter/material.dart";
import "package:get/get.dart";
import 'package:ticket_booking_app/data.dart';
import 'package:ticket_booking_app/utils/ownstyles.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_divider.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';
import 'package:ticket_booking_app/widgets/ticket_view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final deviceWidth = Get.width;
    final deviceHeight = Get.height;

    return Scaffold(
      backgroundColor: Own_Styles.ownBgColor,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(deviceWidth * 0.045),
            child: ListView(
              children: [
                const SizedBox(height: 30,),
                Text(
                  "Tickets",
                  style: Own_Styles.ownHeadLineStyle1,
                ),
                const SizedBox(height: 25,),
                const TickeyTabs(text1: "Upcoming", text2: "Previous"),
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(ticket: ticketList[0], isColored : false),
                ),
                const SizedBox(height: 1,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ColumnLayout(text1: "Flutter DB", text2: "Passengers", align: CrossAxisAlignment.start,),
                          ColumnLayout(text1: "9999 999999", text2: "Passport", align: CrossAxisAlignment.end,),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const LayoutDivider(spacewidth: 15,dividerColor: true,),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ColumnLayout(text1: "7777 777 77777", text2: "Number of E-ticket", align: CrossAxisAlignment.start,),
                          ColumnLayout(text1: "f4h56j8", text2: "Booking Code", align: CrossAxisAlignment.end,),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const LayoutDivider(spacewidth: 15,dividerColor: true,),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/images/visa_photo.jpg",scale: 20,),
                                  Text(" *** 4454",style: Own_Styles.ownHeadLineStyle3.copyWith(color: Colors.black),)
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Text("Payment Method", style: Own_Styles.ownHeadLineStyle4.copyWith(color: Colors.grey),)
                            ],
                          ),
                          const ColumnLayout(text1: "\$ 249.99", text2: "Price", align: CrossAxisAlignment.end),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: BarcodeWidget(
                      data: 'Hello World',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Colors.black,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(ticket: ticketList[0]),
                ),
                const SizedBox(height: 30,),
              ],
            ),
          ),
          Positioned(
            top: 295,
            left: 25,
            child:  Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: const CircleAvatar(
                radius: 5,
                backgroundColor: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 295,
            right: 25,
            child:  Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: const CircleAvatar(
                radius: 5,
                backgroundColor: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
