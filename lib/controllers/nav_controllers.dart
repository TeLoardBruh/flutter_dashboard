import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class NavController extends GetxController {
  static NavController instance = Get.find();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  Future<dynamic> navigatorTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  goBack() => navigatorKey.currentState!.pop();
}
