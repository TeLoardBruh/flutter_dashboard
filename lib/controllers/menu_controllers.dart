import 'package:dashboard/constants/style.dart';
import 'package:dashboard/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = OverViewPageDisplayname.obs;
  var hoverItem = "".obs;

  changeActiveitemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverViewPageDisplayname:
        return _customIcon(itemName, Icons.trending_up);
      case DriversPageDisplayname:
        return _customIcon(itemName, Icons.drive_eta);
      case ClientsPageDisplayname:
        return _customIcon(itemName, Icons.people_alt_outlined);
      case AuthenticationDisplayname:
        return _customIcon(itemName, Icons.exit_to_app);
      default:
        return _customIcon(itemName, Icons.exit_to_app);
    }
  }

  Widget _customIcon(String itemName, IconData iconData) {
    if (isActive(itemName)) {
      return Icon(
        iconData,
        size: 22,
        color: dark,
      );
    }
    return Icon(
      iconData,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
