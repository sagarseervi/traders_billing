import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traders_billing/constants.dart';
import 'package:traders_billing/helpers/enumerators.dart';
import 'package:traders_billing/loacator.dart';
import 'package:traders_billing/provider/app_provider.dart';
import 'package:traders_billing/routing/route_names.dart';
import 'package:traders_billing/services/navigation_service.dart';
import 'package:traders_billing/widgets/navigation_bar/sub_navbar_item.dart';

class HomePageNav extends StatelessWidget {
  const HomePageNav({Key key}) : super(key: key);

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
              child: SubNavbarItem(
                  text: 'Payment Summary',
                  active:
                      appProvider.currentPage == DisplayedPage.PAYMENTSUMMARY,
                  onTap: () {
                    appProvider.changeCurrentPage(DisplayedPage.PAYMENTSUMMARY);
                    locator<NavigationService>().navigateTo(HomeRoute);
                  }),
            ),
            Expanded(
              flex: 20,
              child: SubNavbarItem(
                  text: 'Availabe Storage',
                  active: appProvider.currentPage == DisplayedPage.SEARCHBUYER,
                  onTap: () {
                    appProvider.changeCurrentPage(DisplayedPage.SEARCHBUYER);
                    locator<NavigationService>()
                        .navigateTo(AvailableStorageRoute);
                  }),
            ),
            Expanded(
              flex: 20,
              child: SubNavbarItem(
                  text: 'Sales-Purchase Details',
                  active: appProvider.currentPage == DisplayedPage.SEARCHGANG,
                  onTap: () {
                    appProvider.changeCurrentPage(DisplayedPage.SEARCHGANG);
                    locator<NavigationService>().navigateTo(SalesDetailsRoute);
                  }),
            ),
          ],
        ));
  }
}
