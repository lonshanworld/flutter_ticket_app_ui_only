import "package:flutter/material.dart";
import "package:get/get.dart";

import 'package:ticket_booking_app/utils/ownstyles.dart';
import 'package:ticket_booking_app/widgets/circle_container.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';

class TicketView extends StatelessWidget {

  final Map<String,dynamic> ticket;
  final bool? isColored;
  const TicketView({Key? key, required this.ticket, this.isColored}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final deviceWidth = Get.width;

    return SizedBox(
      width: deviceWidth * 0.85,
      child: Container(
        margin: const EdgeInsets.only(right: 16,),
        child: Column(
          children: [
            // blue part of the ticket
            Container(
              decoration: BoxDecoration(
                color: isColored == null ? const Color(0xFF526799) : Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                )
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        ticket["from"]["code"],
                        style: Own_Styles.ownHeadLineStyle3.copyWith(color: isColored == null ? Colors.white : Colors.black),
                      ),
                      const Spacer(),
                      const CircleContainer(isColored: true),
                      Expanded(
                        child: Stack(
                          children:[
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                  builder: (BuildContext context, BoxConstraints Constraints) {
                                    return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: List.generate((Constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: isColored == null ? Colors.white : Colors.lightBlue,
                                          ),
                                        ),
                                      )),
                                    );
                                  }
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.airplanemode_active,color: isColored == null ? Colors.white : Colors.lightBlue,),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const CircleContainer(isColored:true),
                      const Spacer(),
                      Text(
                        ticket["to"]["code"],
                        style: Own_Styles.ownHeadLineStyle3.copyWith(color: isColored == null ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ticket["from"]["name"],
                        style: Own_Styles.ownHeadLineStyle4.copyWith(color: isColored == null ? Colors.white : Colors.grey),
                      ),
                      Text(
                        ticket["flying_time"],
                        style: Own_Styles.ownHeadLineStyle3.copyWith(color: isColored == null ? Colors.white : Colors.black),
                      ),
                      Text(
                        ticket["to"]["name"],
                        style: Own_Styles.ownHeadLineStyle4.copyWith(color: isColored == null ? Colors.white : Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Orange upperpart of the ticket
            Container(
              color: isColored == null ? Own_Styles.ownOrangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColored == null ? Own_Styles.ownBgColor : Colors.white,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints){
                          return Flex(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            direction: Axis.horizontal,
                            children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                              width: 5,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: isColored == null ? Colors.white : Colors.grey,
                                ),
                              ),
                            )),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColored == null ? Own_Styles.ownBgColor : Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Orange lowerpart of the ticket
            Container(
              decoration: BoxDecoration(
                  color: isColored == null ? Own_Styles.ownOrangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: isColored == null ? const Radius.circular(20) : const Radius.circular(0),
                    bottomRight: isColored == null ? const Radius.circular(20) : const Radius.circular(0),
                  )
              ),
              padding: const EdgeInsets.only(top: 10,bottom: 16,left: 16,right: 16),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(text1: ticket["date"], text2: "Date", align: CrossAxisAlignment.start, isColor: isColored == null ? true : null),
                      ColumnLayout(text1: ticket["departure_time"], text2: "Departure Time", align: CrossAxisAlignment.center, isColor: isColored == null ? true : null),
                      ColumnLayout(text1: ticket["number"].toString(), text2: "Number", align: CrossAxisAlignment.end, isColor: isColored == null ? true : null),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
