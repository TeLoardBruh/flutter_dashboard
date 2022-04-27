import 'package:dashboard/constants/controllers.dart';
import 'package:dashboard/constants/style.dart';
import 'package:dashboard/helpers/responsiveness.dart';
import 'package:dashboard/pages/authentications/authentication.dart';
import 'package:dashboard/routes/routes.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:dashboard/widgets/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(children: [
        if (ResponsiveWidget.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: _width / 48,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 12,
                    ),
                    child: Image.asset('assets/icons/logo.png'),
                  ),
                  Flexible(
                    child: CustomText(
                      text: "Dash",
                      size: 20,
                      fontWeight: FontWeight.bold,
                      color: active,
                    ),
                  ),
                  SizedBox(
                    width: _width / 48,
                  )
                ],
              ),
            ],
          ),
        Divider(
          color: lightGrey.withOpacity(.1),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: sideMenuItems
              .map((itemName) => SideMenuItem(
                    itemName: itemName.name,
                    onTap: () {
                      if (itemName.route == authenticationPageRoute) {
                        menuController
                            .changeActiveitemTo(OverViewPageDisplayname);
                        Get.offAllNamed(authenticationPageRoute);
                      }

                      if (!menuController.isActive(itemName.name!)) {
                        menuController.changeActiveitemTo(itemName.name!);
                        if (ResponsiveWidget.isSmallScreen(context)) {
                          Get.back();
                        }
                        navController.navigatorTo(itemName.route!);
                      }
                    },
                  ))
              .toList(),
        )
      ]),
    );
  }
}
