import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TopNavbar extends StatelessWidget {
  const TopNavbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceSreenType.Mobile ? NavigationDrawer() :
        
      ),
    );
  }
}
