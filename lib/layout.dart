// ignore_for_file: prefer_const_constructors

import 'package:dashboard/helpers/responsiveness.dart';
import 'package:dashboard/widgets/large_screen.dart';
import 'package:dashboard/widgets/side_menu.dart';
import 'package:dashboard/widgets/small_screen.dart';
import 'package:dashboard/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
