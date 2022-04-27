import 'package:dashboard/constants/controllers.dart';
import 'package:dashboard/routes/router.dart';
import 'package:dashboard/routes/routes.dart';
import 'package:flutter/widgets.dart';

Navigator localNavigator() => Navigator(
      key: navController.navigatorKey,
      initialRoute: overViewPageRoute,
      onGenerateRoute: generateRoute,
    );
