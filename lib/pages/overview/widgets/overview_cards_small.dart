import 'package:dashboard/pages/overview/widgets/info_card_small.dart';
import 'package:flutter/material.dart';

class OverViewCardSmallScreen extends StatelessWidget {
  const OverViewCardSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
        height: 400,
        child: Column(
          children: [
            InfoCardSmall(
              onTap: () {},
              title: "Riders in progress",
              value: "7",
              topColor: Colors.orange,
              isActive: true,
            ),
            SizedBox(
              height: _width / 64,
            ),
            InfoCardSmall(
              onTap: () {},
              title: "Package delivered",
              value: "17",
              topColor: Colors.lightGreen,
            ),
            SizedBox(
              height: _width / 64,
            ),
            InfoCardSmall(
              onTap: () {},
              title: "Cancel delivery",
              value: "2",
              topColor: Colors.redAccent,
            ),
            SizedBox(
              height: _width / 64,
            ),
            InfoCardSmall(
              onTap: () {},
              title: "Schedule deliver",
              value: "3",
            ),
          ],
        ));
  }
}
