import 'package:flutter/material.dart';
import 'package:traders_billing/loacator.dart';
import 'package:traders_billing/services/navigation_service.dart';

class TopNavbarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const TopNavbarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
