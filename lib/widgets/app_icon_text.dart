import "package:flutter/material.dart";
import 'package:get/get.dart';

import '../utils/ownstyles.dart';

class AppIconText extends StatelessWidget {

  final IconData icon;
  final String textstring;
  const AppIconText({Key? key, required this.icon, required this.textstring}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final deviceWidth = Get.width;
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFBFC2DF),),
          SizedBox(width: deviceWidth * 0.01,),
          Text(textstring,style: Own_Styles.ownTextstyle,)
        ],
      ),
    );
  }
}
