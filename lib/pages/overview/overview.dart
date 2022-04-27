import 'package:dashboard/constants/controllers.dart';
import 'package:dashboard/helpers/responsiveness.dart';
import 'package:dashboard/pages/overview/widgets/available_drivers.dart';
import 'package:dashboard/pages/overview/widgets/overview_cards_large.dart';
import 'package:dashboard/pages/overview/widgets/overview_cards_medium.dart';
import 'package:dashboard/pages/overview/widgets/overview_cards_small.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:dashboard/pages/overview/widgets/revenue_section_large.dart';
import 'package:dashboard/pages/overview/widgets/revenue_section_small.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

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
          children: [
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
              if (ResponsiveWidget.isCustomScreen(context))
                const OverViewCardMediumScreen()
              else
                const OverViewCardLargeScreen()
            else
              const OverViewCardSmallScreen(),
            if (!ResponsiveWidget.isSmallScreen(context))
              const RevenueSectionLarge()
            else
              const RevenueSectionSmall(),
            const AvailableDrivers()
          ],
        ))
      ],
    );
  }
}
