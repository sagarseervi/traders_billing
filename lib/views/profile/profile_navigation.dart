import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traders_billing/constants.dart';
import 'package:traders_billing/helpers/enumerators.dart';
import 'package:traders_billing/loacator.dart';
import 'package:traders_billing/provider/app_provider.dart';
import 'package:traders_billing/routing/route_names.dart';
import 'package:traders_billing/services/navigation_service.dart';

class ProfileNavigation extends StatelessWidget {
  const ProfileNavigation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = Provider.of<AppProvider>(context);
    return Container(
        //alignment: Alignment.center,
        height: 50,
        color: kprimaryYellow,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 20,
              child: ProfileNavbarItem(
                  text: 'Farmer',
                  active: appProvider.currentPage == DisplayedPage.FARMER,
                  onTap: () {
                    appProvider.changeCurrentPage(DisplayedPage.FARMER);
                    locator<NavigationService>().navigateTo(ProfileRoute);
                  }),
            ),
            Expanded(
              flex: 20,
              child: ProfileNavbarItem(
                  text: 'Buyer',
                  active: appProvider.currentPage == DisplayedPage.BUYER,
                  onTap: () {
                    appProvider.changeCurrentPage(DisplayedPage.BUYER);
                    locator<NavigationService>().navigateTo(ProfileBuyer);
                  }),
            ),
            Expanded(
              flex: 20,
              child: ProfileNavbarItem(
                  text: 'Gang',
                  active: appProvider.currentPage == DisplayedPage.GANG,
                  onTap: () {
                    appProvider.changeCurrentPage(DisplayedPage.GANG);
                    locator<NavigationService>().navigateTo(ProfileGang);
                  }),
            ),
          ],
        ));
  }
}

class ProfileNavbarItem extends StatelessWidget {
  final bool active;
  final String text;
  final Function onTap;
  const ProfileNavbarItem({
    Key key,
    this.active,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 50,
      child: ListTile(
        onTap: onTap,
        //tileColor: active ? Colors.green.withOpacity(.3) : null,
        title: CustomText(
          text: text,
          color: kprimaryPurple,
          size: active ? 23 : 18,
          weight: active ? FontWeight.bold : FontWeight.w500,
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  // name constructor that has a positional parameters with the text required
  // and the other parameters optional
  CustomText({@required this.text, this.size, this.color, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size ?? 16,
          color: color ?? Colors.black,
          fontWeight: weight ?? FontWeight.normal),
    );
  }
}
