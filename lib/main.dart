// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dashboard/constants/style.dart';
import 'package:dashboard/controllers/menu_controllers.dart';
import 'package:dashboard/controllers/nav_controllers.dart';
import 'package:dashboard/layout.dart';
import 'package:dashboard/pages/404/error_page.dart';
import 'package:dashboard/pages/authentications/authentication.dart';
import 'package:dashboard/pages/overview/overview.dart';
import 'package:dashboard/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      unknownRoute: GetPage(
          name: '/not-found',
          page: () => ErrorPage(),
          transition: Transition.fadeIn),
      initialRoute: authenticationPageRoute,
      getPages: [
        GetPage(name: overViewPageRoute, page: () => SiteLayout()),
        GetPage(name: clientsPageRoute, page: () => SiteLayout()),
        GetPage(name: driversPageRoute, page: () => SiteLayout()),
        GetPage(
            name: authenticationPageRoute, page: () => AuthenticationPage()),
      ],
      debugShowCheckedModeBanner: false,
      title: "Dash",
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.muliTextTheme().apply(
          bodyColor: Colors.black,
        ),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        primaryColor: Colors.black,
      ),
      // home: const AuthenticationPage(),
    );
  }
}
