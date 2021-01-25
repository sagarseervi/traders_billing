import 'package:flutter/material.dart';
import 'package:traders_billing/routing/route_names.dart';
import 'package:traders_billing/views/dashboard/dashboard.dart';
import 'package:traders_billing/views/login/loginView.dart';
import 'package:traders_billing/views/settings/SettingsView.dart';
import 'package:traders_billing/views/user_profile/UserProfileView.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(DashboardView());
    case UserProfileRoute:
      return _getPageRoute(UserProfileView());
    case SettingRoute:
      return _getPageRoute(SettingsView());
    case LogoutRoute:
      return _getPageRoute(LoginView());
    default:
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
