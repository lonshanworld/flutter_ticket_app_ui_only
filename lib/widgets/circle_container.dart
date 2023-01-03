import "package:flutter/material.dart";

class CircleContainer extends StatelessWidget {

  final bool? isColored;
  const CircleContainer({Key? key, this.isColored}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(width: 2.5, color: isColored == null ? Colors.white : Colors.lightBlue),
      ),
    );
  }
}
