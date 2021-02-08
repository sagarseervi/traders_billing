import 'package:flutter/material.dart';
import 'package:traders_billing/constants.dart';
import 'package:traders_billing/loacator.dart';
import 'package:traders_billing/routing/route_names.dart';
import 'package:traders_billing/routing/router.dart';
import 'package:traders_billing/services/navigation_service.dart';
import 'package:traders_billing/widgets/navigation_bar/side_navigation.dart';
import 'package:traders_billing/widgets/navigation_bar/top_navigation.dart';

class LayoutTemplate extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: kBgGrey,
      body: Row(
        children: [
          SideNavigationBar(),
          Expanded(
              child: Column(
            children: [
              TopNavigationBar(),
              Expanded(
                  child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ))
            ],
          ))
        ],
      ),
    );
  }
}
