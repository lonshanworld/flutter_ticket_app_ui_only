import "package:flutter/material.dart";

class TickeyTabs extends StatelessWidget {

  final String text1;
  final String text2;
  const TickeyTabs({Key? key, required this.text1, required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.circular(5)),
                color: Colors.white,
              ),
              child: Center(
                child: Text(text1),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.horizontal(right: Radius.circular(20),left: Radius.circular(5)),
                color: Colors.transparent,
              ),
              child: Center(
                child: Text(text2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
