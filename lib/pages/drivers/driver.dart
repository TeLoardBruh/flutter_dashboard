// ignore_for_file: prefer_const_constructors

import 'package:dashboard/constants/controllers.dart';
import 'package:dashboard/helpers/responsiveness.dart';
import 'package:dashboard/widgets/custom_table.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )),
        Expanded(
            child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CustomTable(
              actionName: 'Assign Driver',
            )
          ],
        ))
      ],
    );
  }
}
