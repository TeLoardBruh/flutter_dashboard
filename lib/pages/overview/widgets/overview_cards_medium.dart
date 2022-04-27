import 'package:dashboard/pages/overview/widgets/info_card.dart';
import 'package:flutter/material.dart';

class OverViewCardMediumScreen extends StatelessWidget {
  const OverViewCardMediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              onTap: () {},
              title: "Riders in progress",
              value: "7",
              topColor: Colors.orange,
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              onTap: () {},
              title: "Package delivered",
              value: "17",
              topColor: Colors.lightGreen,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            InfoCard(
              onTap: () {},
              title: "Cancel delivery",
              value: "2",
              topColor: Colors.redAccent,
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              onTap: () {},
              title: "Schedule deliver",
              value: "3",
            ),
          ],
        ),
      ],
    );
  }
}
