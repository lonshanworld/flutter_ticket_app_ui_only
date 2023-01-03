import "package:flutter/material.dart";

class LayoutDivider extends StatelessWidget {

  final bool? dividerColor;
  final int spacewidth;
  const LayoutDivider({Key? key, this.dividerColor, required this.spacewidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          direction: Axis.horizontal,
          children: List.generate((constraints.constrainWidth()/spacewidth).floor(), (index) => SizedBox(
            width: 5,
            height: 1,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: dividerColor == null ? Colors.white : Colors.grey,
              ),
            ),
          )),
        );
      },
    );
  }
}
