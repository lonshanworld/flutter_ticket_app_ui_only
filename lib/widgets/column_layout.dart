import "package:flutter/material.dart";

import '../utils/ownstyles.dart';

class ColumnLayout extends StatelessWidget {

  final CrossAxisAlignment align;
  final bool? isColor;
  final String text1;
  final String text2;
  const ColumnLayout({Key? key, required this.text1, required this.text2, this.isColor, required this.align}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: align,
      children: [
        Text(
          text1,
          style: Own_Styles.ownHeadLineStyle3.copyWith(color: isColor == null ? Colors.black : Colors.white),
        ),
        const SizedBox(height: 5,),
        Text(
          text2,
          style: Own_Styles.ownHeadLineStyle4.copyWith(color: isColor == null ? Colors.grey : Colors.white),
        ),
      ],
    );
  }
}
