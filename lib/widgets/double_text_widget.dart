import "package:flutter/material.dart";

import '../utils/ownstyles.dart';

class DoubleTextWidget extends StatelessWidget {

  final String text1;
  final String text2;
  const DoubleTextWidget({Key? key, required this.text1, required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          text1,
          style: Own_Styles.ownHeadLineStyle2,
        ),
        InkWell(
          child: Text(
            text2,
            style: Own_Styles.ownTextstyle
                .copyWith(color: Own_Styles.ownPrimaryColor),
          ),
          onTap: (){},
        ),
      ],
    );
  }
}
